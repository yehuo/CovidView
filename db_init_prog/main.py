from selenium.webdriver import Chrome, ChromeOptions
import requests
import pymysql
import time
import json
import traceback
import sys
from db_init_prog.config import get_conn, close_conn, APIs
from datetime import datetime

from db_init_prog.china_history_spider import update_china_history
from db_init_prog.china_status_spider import update_china_status
from db_init_prog.global_spider import update_global_data
from db_init_prog.news_spider import update_hotsearch

if __name__ == '__main__':
    cursor = None
    conn = None
    conn, cursor = get_conn()
    cursor.execute('TRUNCATE TABLE `c_history`')
    cursor.execute('TRUNCATE TABLE `g_history`')
    cursor.execute('TRUNCATE TABLE `data_china`')
    cursor.execute('TRUNCATE TABLE `data_global`')
    conn.commit()
    conn.close()
    update_hotsearch()
    update_global_data()
    update_china_status()
    update_china_history()
