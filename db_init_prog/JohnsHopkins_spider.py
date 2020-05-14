import requests
import os
import numpy as np
import pandas as pd
from datetime import timedelta, datetime
import time
import pymysql

# dataSource:https://data.humdata.org/dataset/novel-coronavirus-2019-ncov-cases
csv_link = {
    'confirm': 'https://data.humdata.org/hxlproxy/api/data-preview.csv?url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_confirmed_global.csv&filename=time_series_covid19_confirmed_global.csv',
    'dead': 'https://data.humdata.org/hxlproxy/api/data-preview.csv?url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_deaths_global.csv&filename=time_series_covid19_deaths_global.csv',
    'heal': 'https://data.humdata.org/hxlproxy/api/data-preview.csv?url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_recovered_global.csv&filename=time_series_covid19_recovered_global.csv'
}

countrys = ['Japan', 'Korea, South', 'Russia', 'India', 'Pakistan', 'Brazil', 'South Africa', 'United Kingdom',
            'France', 'Germany', 'Italy', 'Iran']


def format_date(raw_date):
    timeItem = time.strptime(raw_date, '%m/%d/%y')
    return time.strftime('%Y-%m-%d',timeItem)


def write_csv():
    for col_name in csv_link:
        filename = col_name + '.csv'
        if os.path.exists(filename):
            os.remove(filename)
        fp = open(filename, 'w+')
        response = requests.get(csv_link[col_name])
        result = str(response.text).replace('\r\n', '\n')
        fp.write(result)
        fp.close()
    return True


def write_db(cur):
    confirm_df = pd.read_csv("./data/confirm.csv")
    confirm_df.drop(['Province/State', 'Lat', 'Long'], axis=1, inplace=True)
    dead_df = pd.read_csv("./data/dead.csv")
    dead_df.drop(['Province/State', 'Lat', 'Long'], axis=1, inplace=True)
    heal_df = pd.read_csv('./data/heal.csv')
    heal_df.drop(['Province/State', 'Lat', 'Long'], axis=1, inplace=True)
    result = []
    for country in countrys:
        sub_confirm_df = confirm_df[confirm_df['Country/Region'] == country]
        sub_dead_df = dead_df[dead_df['Country/Region'] == country]
        sub_heal_df = heal_df[heal_df['Country/Region'] == country]
        dates = confirm_df.columns.tolist()
        now_item = datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S')
        # print(now_item)
        for date in dates:
            if date == 'Country/Region':
                continue
            index = format_date(date)
            deadNum = int(sub_dead_df.iloc[0][date])
            confirmNum = int(confirm_df.iloc[0][date])
            healNum = int(heal_df.iloc[0][date])
            row = (now_item, now_item, index, confirmNum, deadNum, healNum, country)
            result.append(row)
            # query = 'INSERT INTO multi_history (updateTime,createTime,`date`,confirm,dead,heal,country) VALUES ("%s","%s","%s",%d,%d,%d,"%s")' % row
            # print(query)
            # cur.execute(query)
    query = "INSERT INTO multi_history (updateTime,createTime,`date`,confirm,dead,heal,country) VALUES (%s,%s,%s,%s,%s,%s,%s)"
    cur.executemany(query,result)

if __name__ == '__main__':
    # write_csv()
    conn = pymysql.connect(host='127.0.0.1', user='root', password='frdh4BN3@love', database='test', charset='utf8')
    cursor = conn.cursor()
    write_db(cursor)
