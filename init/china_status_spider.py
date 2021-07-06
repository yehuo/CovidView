from selenium.webdriver import Chrome, ChromeOptions
import requests
import pymysql
import time
import json
import traceback
import sys
from db_init_prog.config import get_conn, close_conn, APIs
from datetime import datetime


def get_china_status():
    url = APIs['basic']
    r = requests.get(url)
    res = json.loads(r.text)  # json字符串转字典
    data = json.loads(res['data'])

    details = []  # 当日详细数据
    update_time = data["lastUpdateTime"]
    data_country = data["areaTree"]

    data_china = data_country[0]  # 全国信息
    details.append(
        (update_time, data_china['name'], 'all', '', int(data_china['total']['confirm']),
         int(data_china['total']['suspect']),
         int(data_china['total']['heal']), int(data_china['total']['dead']), int(data_china['total']['nowConfirm']),
         float(data_china['total']['healRate']), float(data_china['total']['deadRate'])))
    # updateTime,country,province,city,confirm,suspect,heal,dead,nowConfirm,healRate,deadRate

    data_province = data_country[0]["children"]  # 各省信息
    for pro_infos in data_province:
        province = pro_infos["name"]  # 省名
        pro_detail = pro_infos['total']
        details.append(
            (update_time, "中国", province, "all", int(pro_detail['confirm']), int(pro_detail['suspect']),
             int(pro_detail['heal']), int(pro_detail['dead']), int(pro_detail['nowConfirm']),
             float(pro_detail['healRate']), float(pro_detail['deadRate'])))

        for city_infos in pro_infos["children"]:
            city = city_infos["name"]
            city_detail = city_infos["total"]
            details.append((update_time, "中国", province, city, int(city_detail['confirm']), int(city_detail['suspect']),
                            int(city_detail['heal']), int(city_detail['dead']), int(city_detail['nowConfirm']),
                            float(city_detail['healRate']), float(city_detail['deadRate'])))
    return details


def update_china_status():
    cursor = None
    conn = None
    try:
        context = get_china_status()
        print(f"{time.asctime()}开始更新国内疫情数据")
        conn, cursor = get_conn()
        sql = "INSERT INTO data_china(updateTime,country,province,city,confirm,suspect,heal,dead,nowConfirm,healRate,deadRate) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        cursor.executemany(sql, context)  # 插入数据
        print('execute successfully')
        conn.commit()  # 提交事务保存数据
        print(f"{time.asctime()}数据更新完毕")
    except:
        traceback.print_exc()
    finally:
        close_conn(conn, cursor)
