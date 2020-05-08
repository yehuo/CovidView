import requests
import os
import numpy as np
import pandas as pd
from datetime import timedelta, datetime

# dataSource:https://data.humdata.org/dataset/novel-coronavirus-2019-ncov-cases
csv_link = {
    'confirm': 'https://data.humdata.org/hxlproxy/api/data-preview.csv?url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_confirmed_global.csv&filename=time_series_covid19_confirmed_global.csv',
    'dead': 'https://data.humdata.org/hxlproxy/api/data-preview.csv?url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_deaths_global.csv&filename=time_series_covid19_deaths_global.csv',
    'heal': 'https://data.humdata.org/hxlproxy/api/data-preview.csv?url=https%3A%2F%2Fraw.githubusercontent.com%2FCSSEGISandData%2FCOVID-19%2Fmaster%2Fcsse_covid_19_data%2Fcsse_covid_19_time_series%2Ftime_series_covid19_recovered_global.csv&filename=time_series_covid19_recovered_global.csv'
}


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

if __name__ == '__main__':
    write_csv()
    # read_f()