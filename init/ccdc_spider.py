# http://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm
from bs4 import BeautifulSoup, Comment
import requests
import re

req = requests.get("http://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm")
context = req.text
bs = BeautifulSoup(context, "html.parser")
# print(bs)
comments = bs.find_all(text=lambda text: isinstance(text, Comment))
raw_data = BeautifulSoup(comments[11], 'html.parser')
# result=raw_data.find_all(text="National Health Commission Update")
p_list = raw_data.find_all('p')
for p_item in p_list:
    info = p_item.text
    # print(info)
    if re.search("National Health Commission", info) is not None:
        if len(info)<60 and len(info)>43:#日期标注行
            date=info[37:]
            print(date)
# for i in re.split('National Health Commission Update',comments[11]):
#     print(i)
