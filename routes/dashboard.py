from flask import (
    render_template,
    Blueprint)
from models.data_china import ChinaStatus
from models.data_global import GlobalStatus
from routes.helper import current_user
from models.user import User
from models.country import Country
import json
from flask import (
    render_template,
    jsonify,
    request,
    redirect,
    session,
    url_for,
    Blueprint,
    send_from_directory)

main = Blueprint('dashboard', __name__)


@main.route("/")
def index():
    # l=level C:Country c:City p:Province
    # t=time UpdateTime(String)
    # n=name Country/City/Province name
    # d=data 一个数据类组成的列表
    statis_data_item = ChinaStatus.one(province='all')
    chart_data_list = ChinaStatus.top(name='confirm', num=8, city='all')
    time = ChinaStatus.one().updateTime
    name = 'China'
    u = current_user()
    return render_template('./dashboard/statis.html', l='C', n=name, t=time, sd=statis_data_item, u=u,
                           cd=chart_data_list)


@main.route('/statis/<string:name>')
def statis(name):
    # 提供国内的省级/国外的国家级数据查询
    typename = Country.one(name=name)
    typename = typename.APIType
    if typename == 'basic':
        data = ChinaStatus.one(province=name)
    elif typename == 'foreign':
        data = GlobalStatus.one(country=name)
    time = data.updateTime
    statis_data_item = data
    u = current_user()
    return render_template('./dashboard/statis.html', l='p', n=name, t=time, sd=statis_data_item, u=u,
                           cd=statis_data_item)


@main.route('/pieChartData', methods=['POST'])
def getPieData():
    countryName = request.form["name"]
    print(countryName)
    x = Country().one(name=countryName)
    x = x.APIType
    if x == 'basic':
        result = ChinaStatus.one(country=countryName)
    elif x == 'foreign':
        result = GlobalStatus().one(country=countryName)
    results = [
        {"value": int(result.heal), "name": 'heal'},
        {"value": int(result.nowConfirm), "name": 'nowConfirm', },
        {"value": int(result.dead), "name": 'dead'},
    ]
    print(results)
    return jsonify({"data": results})


@main.route('/forecast')
def forecast():
    data = GlobalStatus.all(country='美国')


@main.route('/maps/')
def maps():
    data = ChinaStatus.all(city='all')
