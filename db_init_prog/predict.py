#!/usr/bin/python
import numpy as np
import pandas as pd
from csv import reader
from csv import writer
from scipy.integrate import solve_ivp
from scipy.optimize import minimize
import matplotlib.pyplot as plt
from datetime import timedelta, datetime
import sqlalchemy
import pymysql
import argparse
import sys
import json
import ssl
import urllib.request

file_list = {
    'confirmed': './data/confirm.csv',
    'recovered': './data/heal.csv',
    'death': './data/dead.csv'
}


def db_connector():
    conn = sqlalchemy.create_engine('mysql+pymysql://root:frdh4BN3@love@localhost:3306/test?charset=utf8')
    print('connect success')
    return conn


class Learner(object):
    def __init__(self, country, loss, start_date, predict_range, s_0, i_0, r_0):
        self.country = country
        self.loss = loss
        self.start_date = start_date
        self.predict_range = predict_range
        self.s_0 = s_0
        self.i_0 = i_0
        self.r_0 = r_0

    def load_confirmed(self, country):
        df = pd.read_csv(file_list['confirmed'])
        country_df = df[df['Country/Region'] == country]
        if country == 'China':
            country_df = df[df['Province/State'] == 'Hubei']
        return country_df.iloc[0].loc[self.start_date:]

    def load_recovered(self, country):
        df = pd.read_csv(file_list['recovered'])
        country_df = df[df['Country/Region'] == country]
        if country == 'China':
            country_df = df[df['Province/State'] == 'Hubei']
        return country_df.iloc[0].loc[self.start_date:]

    def load_dead(self, country):
        df = pd.read_csv(file_list['death'])
        country_df = df[df['Country/Region'] == country]
        if country == 'China':
            country_df = df[df['Province/State'] == 'Hubei']
        return country_df.iloc[0].loc[self.start_date:]

    def extend_index(self, index, new_size):
        values = index.values
        current = datetime.strptime(index[-1], '%m/%d/%y')
        while len(values) < new_size:
            current = current + timedelta(days=1)
            values = np.append(values, datetime.strftime(current, '%m/%d/%y'))
        return values

    def predict(self, beta, gamma, data, recovered, death, country, s_0, i_0, r_0):
        new_index = self.extend_index(data.index, self.predict_range)
        size = len(new_index)

        def SIR(t, y):
            S = y[0]
            I = y[1]
            R = y[2]
            return [-beta * S * I, beta * S * I - gamma * I, gamma * I]

        extended_actual = np.concatenate((data.values, [None] * (size - len(data.values))))
        extended_recovered = np.concatenate((recovered.values, [None] * (size - len(recovered.values))))
        extended_death = np.concatenate((death.values, [None] * (size - len(death.values))))
        return new_index, extended_actual, extended_recovered, extended_death, solve_ivp(SIR, [0, size],
                                                                                         [s_0, i_0, r_0],
                                                                                         t_eval=np.arange(0, size, 1))

    def train(self):
        recovered = self.load_recovered(self.country)
        death = self.load_dead(self.country)
        data = (self.load_confirmed(self.country) - recovered - death)

        optimal = minimize(loss, [0.001, 0.001], args=(data, recovered, self.s_0, self.i_0, self.r_0),
                           method='L-BFGS-B', bounds=[(0.00000001, 0.4), (0.00000001, 0.4)])
        print(optimal)
        beta, gamma = optimal.x
        new_index, extended_actual, extended_recovered, extended_death, prediction = \
            self.predict(beta, gamma, data, recovered, death, self.country, self.s_0, self.i_0, self.r_0)
        df = pd.DataFrame(
            {'Infected data': extended_actual, 'Recovered data': extended_recovered, 'Death data': extended_death,
             'Susceptible': prediction.y[0], 'Infected': prediction.y[1], 'Recovered': prediction.y[2]},
            index=new_index)
        # 画图部分
        fig, ax = plt.subplots(figsize=(15, 10))
        ax.set_title(self.country)
        df.plot(ax=ax)
        print(f"country={self.country}, beta={beta:.8f}, gamma={gamma:.8f}, r_0:{(beta / gamma):.8f}")
        fig.savefig(f"./predict_map/{self.country}.png")
        # 导入数据库部分
        df1 = pd.DataFrame(
            {'Infected data': extended_actual.astype(str), 'Recovered data': extended_recovered.astype(str),
             'Death data': extended_death.astype(str),
             'Susceptible': prediction.y[0].astype(str), 'Infected': prediction.y[1].astype(str),
             'Recovered': prediction.y[2].astype(str)},
            index=new_index)
        conn = db_connector()
        df1.to_sql("predictdata", con=conn, if_exists='append')


def loss(point, data, recovered, s_0, i_0, r_0):
    size = len(data)
    beta, gamma = point

    def SIR(t, y):
        S = y[0]
        I = y[1]
        R = y[2]
        return [-beta * S * I, beta * S * I - gamma * I, gamma * I]

    solution = solve_ivp(SIR, [0, size], [s_0, i_0, r_0], t_eval=np.arange(0, size, 1), vectorized=True)
    l1 = np.sqrt(np.mean((solution.y[1] - data) ** 2))
    l2 = np.sqrt(np.mean((solution.y[2] - recovered) ** 2))
    alpha = 0.1
    return alpha * l1 + (1 - alpha) * l2


def sir_pridict(country, startdate):
    s_0 = 15000
    i_0 = 2
    r_0 = 0
    predict_range = 150
    learner = Learner(country, loss, startdate, predict_range, s_0, i_0, r_0)
    # try:
    learner.train()


if __name__ == '__main__':
    # 日本、韩国、俄罗斯、印度、巴基斯坦、巴西、南非、英国、法国、德国、意大利、伊朗
    countrys = ['Japan', 'Korea, South', 'Russia', 'India', 'Pakistan', 'Brazil', 'South Africa', 'United Kingdom',
               'France', 'Germany', 'Italy', 'Iran','China.Hubei']
    for i in countrys:
        conn=db_connector()
        sql="SELECT startTime FROM predictable_country WHERE rawName=\"{}\"".format(i)
        print("country:"+i+" is processing")
        result = conn.execute(sql)
        startDate=result.fetchall()[0][0]
        # sir_pridict(country=i, startdate=startDate)
    sir_pridict(country='China',startdate="1/22/20")