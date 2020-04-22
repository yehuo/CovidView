from selenium.webdriver import Chrome, ChromeOptions
import requests
import pymysql
import time
import json
import traceback
import sys
from db_init_prog.config import get_conn, close_conn, APIs
from datetime import datetime


def get_global_status():
    url = APIs['foreign']
    r = requests.get(url)
    res = json.loads(r.text)  # json字符串转字典
    data = json.loads(res['data'])

    details = []  # 当日详细数据
    history = []  # 全球历史数据
    data_country = data["foreignList"]  # 各国信息
    data_global = data["globalStatis"]  # 全球信息
    data_history = data["globalDailyHistory"]  # 全球历史

    update_time = data_global['lastUpdateTime']

    details.append(  # 全球
        (update_time, "全球", 'all', '', data_global['confirm'], data_global['heal'], data_global['dead'],
         data_global['nowConfirm']))
    # updateTime,continent,country,province,confirm,heal,dead,nowConfirm

    for country_infos in data_country:
        continent = country_infos['continent']
        country = country_infos['name']  # 国家
        details.append(
            (update_time, country_infos['continent'], country_infos['name'], 'all', country_infos['confirm'],
             country_infos['heal'], country_infos['dead'], country_infos['nowConfirm']))
        if "children" in country_infos.keys():  # 省份
            for pro_infos in country_infos["children"]:
                province = pro_infos["name"]
                details.append(
                    (update_time, continent, country, pro_infos['name'], pro_infos['confirm'],
                     pro_infos['heal'], pro_infos['dead'],
                     pro_infos['confirm'] - pro_infos['heal'] - pro_infos['dead']))  # 现存感染者计算
    ts = time.strftime("%Y-%m-%d %X")
    for daily_info in data_history:
        daily_details = daily_info['all']
        history.append((update_time, ts, daily_info['date'], str(daily_details['confirm']), str(daily_details['dead']),
                        str(daily_details['heal']), str(daily_details['newAddConfirm']),
                        float(daily_details['deadRate']), float(daily_details['healRate'])))
        # updateTime,date,confirm,dead,heal,newAddConfirm,deadRate,healRate

    return details, history


def update_global_data():
    cursor = None
    conn = None
    try:
        context, history = get_global_status()
        print(f"{time.asctime()}开始更新全球疫情数据")
        conn, cursor = get_conn()
        ts = time.strftime("%Y-%m-%d %X")
        status_sql = "INSERT INTO data_global(updateTime,continent,country,province,confirm,heal,dead,nowConfirm) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
        his_sql = "INSERT INTO g_history(updateTime,createTime,`date`,confirm,dead,heal,newAddConfirm,deadRate,healRate) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        cursor.executemany(status_sql, context)  # 插入全球疫情数据
        for his_item in history:
            print(his_item)
            cursor.execute(his_sql, his_item)  # 插入全球历史数据
            print('execute successfully')
            conn.commit()  # 提交事务保存数据
            print(f"{time.asctime()}数据更新完毕")
    except:
        traceback.print_exc()
    finally:
        close_conn(conn, cursor)
