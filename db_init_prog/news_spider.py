from selenium.webdriver import Chrome, ChromeOptions
import requests
import pymysql
import time
import json
import traceback
import sys
from db_init_prog.config import get_conn, close_conn, APIs
from datetime import datetime


def get_baidu_hot():
    """
    :return: 返回百度疫情热搜
    """
    option = ChromeOptions()  # 创建谷歌浏览器实例
    option.add_argument("--headless")  # 隐藏浏览器
    option.add_argument('--no-sandbox')

    url = APIs['news']
    browser = Chrome(options=option, executable_path="./chromedriver.exe")
    browser.get(url)
    # 找到展开按钮
    # dl = browser.find_element_by_xpath('//*[@id="main"]/div/div/section/div[2]/div/div[2]/section/div')
    dl = browser.find_element_by_css_selector(
        '#ptab-0 > div > div.VirusHot_1-5-6_32AY4F.VirusHot_1-5-6_2RnRvg > section > div')
    dl.click()

    time.sleep(1)
    # 找到热搜标签
    t = browser.find_elements_by_xpath('//*[@id="ptab-0"]/div/div[1]/section/a/div/span[2]')
    title = [i.text for i in t]  # 获取标签内容
    l = browser.find_elements_by_xpath('//*[@id="ptab-0"]/div/div[1]/section/a')
    link = [j.get_attribute('href') for j in l]
    result=[]
    for i in range(len(title)):
        result.append({'title': title[i], 'link': link[i]})
    return result


def update_hotsearch():
    cursor = None
    conn = None
    try:
        context = get_baidu_hot()
        print(f"{time.asctime()}开始更新热搜数据")
        conn, cursor = get_conn()
        sql = "insert into topic(board_id,title,content,user_id,link,createTime,updateTime) values(1,%s,%s,1,%s,%s,%s)"
        ts = datetime.now().strftime("%Y-%m-%d %X")
        for i in context:
            cursor.execute(sql, (i['title'], i['title'], i['link'], ts, ts))  # 插入数据
        print('execute successfully')
        conn.commit()  # 提交事务保存数据
        print(f"{time.asctime()}数据更新完毕")
    except:
        traceback.print_exc()
    finally:
        close_conn(conn, cursor)
