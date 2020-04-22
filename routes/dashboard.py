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
    statis_data = ChinaStatus.one(province='all')
    chart_data_list = ChinaStatus.top(name='confirm', num=8, city='all')
    time = statis_data.updateTime
    name = '中国'
    u = current_user()
    return render_template('./dashboard/statis.html', l='C', n=name, t=time, sd=statis_data, u=u,
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
    statis_data = data
    u = current_user()
    return render_template('./dashboard/statis.html', l='p', n=name, t=time, sd=statis_data, u=u,
                           cd=statis_data)


@main.route('/pieChartData', methods=['POST'])
def getPieData():
    countryName = request.form["name"]
    print(countryName)
    x = Country().one(name=countryName)
    print(countryName)
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
    user = current_user()
    statis_data = {
        'time': data.updateTime,
        'name': '美国',
        'data': {
            'confirm': data.confirm,
            'heal': data.heal,
            'dead': data.dead,
            'nowConfirm': data.nowConfirm
        }
    }
    return render_template('dashboard/forecast.html', data=statis_data, u=user, name='美国')


@main.route('/maps/')
def maps():
    data = ChinaStatus.all(city='all')
