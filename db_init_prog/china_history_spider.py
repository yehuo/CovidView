from selenium.webdriver import Chrome, ChromeOptions
import requests
import pymysql
import time
import json
import traceback
import sys
from db_init_prog.config import get_conn, close_conn, APIs
from datetime import datetime


def date_phrase(date_string):
    date_string = '2020-' + date_string
    date_string = date_string.replace('.', '-')
    return date_string


def get_china_history():
    url = APIs['history']
    r = requests.get(url)
    res = json.loads(r.text)  # json字符串转字典
    data = json.loads(res['data'])

    details = []  # 当日详细数据
    data_history = data["chinaDayList"]
    for daily_infos in data_history:
        ts = time.strftime("%Y-%m-%d %X")
        details.append(
            (ts, ts, date_phrase(daily_infos['date']), daily_infos['confirm'], daily_infos['suspect'],
             daily_infos['dead'],
             daily_infos['heal'], daily_infos['nowConfirm'], daily_infos['importedCase'], daily_infos['healRate'],
             daily_infos['deadRate']))
        # updateTime,createTime,date,confirm,suspect,dead,heal,nowConfirm,importedCase,healRate,deadRate
    return details


def update_china_history():
    cursor = None
    conn = None
    try:
        context = get_china_history()
        print(f"{time.asctime()}开始更新国内历史数据")
        conn, cursor = get_conn()
        sql = "INSERT INTO c_history(updateTime,createTime,`date`,confirm,suspect,dead,heal,nowConfirm,importedCase,healRate,deadRate) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        cursor.executemany(sql, context)  # 插入数据
        print('execute successfully')
        conn.commit()  # 提交事务保存数据
        print(f"{time.asctime()}数据更新完毕")
    except:
        traceback.print_exc()
    finally:
        close_conn(conn, cursor)
