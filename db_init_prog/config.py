from selenium.webdriver import Chrome, ChromeOptions
import requests
import pymysql
import time
import json
import traceback
import sys

APIs = {
    'basic': 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_h5',
    # basic:包含全国各省市当天实时数据
    'history': 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_other',
    # history:包含全国历史数据
    'foreign': 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_foreign',
    # foreign:包含世界实时数据与历史数据
    'news':'https://voice.baidu.com/act/virussearch/virussearch?from=osari_map&tab=0&infomore=1'
}

def get_conn():
    # 创建连接
    conn = pymysql.connect(host="127.0.0.1",
                           user="root",
                           password="frdh4BN3@love",
                           db="test",
                           charset="utf8mb4")
    # 创建游标
    cursor = conn.cursor()  # 执行完毕返回的结果集默认以元组显示
    return conn, cursor

def close_conn(conn, cursor):
    if cursor:
        cursor.close()
    if conn:
        conn.close()