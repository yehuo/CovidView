import requests
import json
from sqlalchemy import Column, Integer, String, DateTime, Float, create_engine,Date
from sqlalchemy.orm import Query, sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from datetime import datetime,date
import urllib.parse
import threading

Base = declarative_base()
engine = create_engine('mysql+pymysql://root:{}@127.0.0.1:3306/test?charset=utf8mb4'.format(
    urllib.parse.quote_plus('frdh4BN3@love')))
DBSession = sessionmaker(bind=engine)
session = DBSession()


class Data_china(Base):
    __tablename__ = 'Data_china'
    id = Column(Integer, autoincrement=True, primary_key=True)
    updateTime = Column(DateTime, default=datetime.now())
    confirm = Column(Integer, nullable=False, default=0)
    heal = Column(Integer, nullable=False, default=0)
    dead = Column(Integer, nullable=False, default=0)
    nowConfirm = Column(Integer, nullable=False, default=0)
    healRate = Column(Float, nullable=False, default=0.0)
    deadRate = Column(Float, nullable=False, default=0.0)
    country = Column(String(255), nullable=False, default='China')
    province = Column(String(255), default='all')
    city = Column(String(255), default='all')
    suspect = Column(Integer, nullable=False, default=0)

    def log(self):
        print(str(self.province) + ' ' + str(self.city) + ' is inserted')


class Data_global(Base):
    __tablename__ = 'Data_global'
    id = Column(Integer, autoincrement=True, primary_key=True)
    updateTime = Column(String(50))
    continent = Column(String(50))
    country = Column(String(255), nullable=False, default='all')
    province = Column(String(255), default='all')
    confirm = Column(Integer, nullable=False, default=0)
    heal = Column(Integer, nullable=False, default=0)
    dead = Column(Integer, nullable=False, default=0)
    nowConfirm = Column(Integer, nullable=False, default=0)

    def log(self):
        print(str(self.continent) + ' ' + str(self.country) + str(self.province) + ' is inserted')

class Country(Base):
    __tablename__='Country'
    id=Column(Integer,autoincrement=True,primary_key=True)
    name=Column(String(20))
    APIType=Column(String(20))
    level=Column(String(20))



class my_thread(threading.Thread):
    def __init__(self, data_item):
        threading.Thread.__init__(self)
        self.session = DBSession()
        self.data = data_item

    def run(self):
        self.session.add(self.data)
        self.session.commit()
        self.session.close()


APIs = {
    'basic': 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_h5',
    # basic:包含全国各省市当天实时数据
    'history': 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_other',
    # history:包含全国历史数据
    'foreign': 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_foreign',
    # foreign:包含世界实时数据与历史数据
}


def api_search(url):
    raw_data = requests.get(url=APIs[url]).json()
    json_data = json.loads(raw_data['data'])
    return json_data


def get_form(json, json_t):
    if json_t == 'basic':
        data_item = Data_china(updateTime=json['lastUpdateTime'], country='China', city='None')
        print(dict(json['chinaTotal']).items())
        for column_item in dict(json['chinaTotal']).items():
            setattr(data_item, column_item[0], column_item[1])
        session.add(data_item)
        session.commit()
        data_item.log()
        provinces = json['areaTree'][0]['children']
        for province in provinces:
            data = province['total']
            province_item = Data_china(
                updateTime=json['lastUpdateTime'],
                country='China',
                province=province['name'],
                confirm=data['confirm'],
                nowConfirm=data['nowConfirm'],
                suspect=data['suspect'],
                dead=data['dead'],
                heal=data['heal'],
                healRate=data['healRate'],
                deadRate=data['deadRate']
            )
            session.add(province_item)
            session.commit()
            province_item.log()
            city_thread_list = []
            for city in province['children']:
                data = city['total']
                city_item = Data_china(
                    updateTime=json['lastUpdateTime'],
                    country='China',
                    province=province['name'],
                    city=city['name'],
                    confirm=data['confirm'],
                    nowConfirm=data['nowConfirm'],
                    suspect=data['suspect'],
                    dead=data['dead'],
                    heal=data['heal'],
                    healRate=data['healRate'],
                    deadRate=data['deadRate']
                )
                thread_instance = my_thread(city_item)
                city_thread_list.append(thread_instance)
                thread_instance.start()
                city_item.log()
            for thread_item in city_thread_list:
                thread_item.join()
    elif json_t == 'foreign':
        data_item = Data_global(updateTime=json['globalStatis']['lastUpdateTime'])
        print(json['globalStatis'])
        globalStatis = dict(json['globalStatis'])
        for column_item in globalStatis.items():
            setattr(data_item, column_item[0], column_item[1])
        session.add(data_item)
        session.commit()
        data_item.log()

        countryList = list(json['foreignList'])
        print(countryList)
        for country in countryList:
            country=dict(country)
            country_item = Data_global(
                updateTime=country['date'],
                continent=country['continent'],
                country=country['name'],
                province='all',
                confirm=country['confirm'],
                nowConfirm=country['nowConfirm'],
                dead=country['dead'],
                heal=country['heal'],
            )
            session.add(country_item)
            session.commit()
            country_item.log()
            if 'children' not in country.keys():
                continue
            provinceThreadList = []
            for province in country['children']:
                province_item = Data_global(
                    updateTime=province['date'],
                    continent=country['continent'],
                    country=country['name'],
                    province=province['name'],
                    confirm=province['confirm'],
                    nowConfirm=-1 ,
                    dead=province['dead'],
                    heal=province['heal'],
                )
                thread_instance = my_thread(province_item)
                provinceThreadList.append(thread_instance)
                thread_instance.start()
                province_item.log()
            for thread_item in provinceThreadList:
                thread_item.join()


if __name__ == '__main__':
    China_json = api_search('basic')
    Global_json = api_search('foreign')
    get_form(China_json, 'basic')
    get_form(Global_json, 'foreign')
