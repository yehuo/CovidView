import pandas as pd
from datetime import datetime
import time
import pymysql


def time_formater(time_str):
    time_item = time.strptime(time_str, '%m/%d/%y')
    formated_time = time.strftime('%Y-%m-%d', time_item)
    return formated_time


def table_writer(cursor):
    confirm_df = pd.read_csv("./data/confirm.csv")
    dead_df = pd.read_csv("./data/dead.csv")
    heal_df = pd.read_csv("./data/heal.csv")
    date_list = list(confirm_df)[4:]
    print(list(confirm_df))
    result = []
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    current_time = current_time
    for index, row in confirm_df.iterrows():
        for date_item in date_list:
            if row[date_item] != 0:
                proName = str(row['Province/State'])
                suffix = ('.'+proName) if proName != 'nan' else ''
                rawName = str(row['Country/Region'])+suffix
                result.append((current_time, current_time, rawName, date_item))
                # print([current_time, current_time, rawName, time_formater(date_item)])
                break
    sql = 'INSERT INTO `predictable_country`(createTime,updateTime,rawName,startTime) VALUES (%s,%s,%s,%s)'
    cursor.executemany(sql,result)


if __name__ == '__main__':
    conn = pymysql.connect(host="localhost", user='root', password='frdh4BN3@love', database='test')
    cursor = conn.cursor()
    cursor.execute("TRUNCATE TABLE `predictable_country`")
    table_writer(cursor)
    conn.commit()
    cursor.close()
    conn.close()
