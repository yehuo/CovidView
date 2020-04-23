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
    country_info = Country().one(name=countryName)
    APIType = country_info.APIType
    level = country_info.level
    names = []
    results = []
    if APIType == 'basic':
        if level == 'country':  # 国内各省
            result = ChinaStatus.all(city='all')
            for item in result:
                if item.nowConfirm == 0:
                    continue
                names.append(item.province)
                results.append({"name": item.province, "value": item.nowConfirm})
        elif level == 'province':  # 省内各市
            result = ChinaStatus.all(province=countryName)
            for city_info in result:
                if city_info.name != 'all':
                    names.append(city_info.name)
                    results.append({"name": city_info.city, "value": city_info.nowConfirm})
    elif APIType == 'foreign':
        if level == 'country':
            result = GlobalStatus.all(country=countryName)
            for pro_info in result:
                if pro_info.province != 'all' and pro_info.nowConfirm >= 0:
                    names.append(pro_info.province)
                    results.append({"name": pro_info.province, "value": pro_info.nowConfirm})
    else:
        print("error province search name.")
    return jsonify({"data": results, "name": names})


@main.route('/barChartData', methods=['POST'])
def getBarData():
    countryName = request.form["name"]
    results = []
    results.append(['provinceName', 'confirm', 'dead', 'heal'])
    name_info = Country().one(name=countryName)
    APIType = name_info.APIType
    if APIType == 'basic':
        pro_info_list = ChinaStatus.all(city='all')
    elif APIType == 'foreign':
        pro_info_list = GlobalStatus().all(country=countryName)
    else:
        pro_info_list = []
    for i in range(min(9, len(pro_info_list))):
        results.append(
            [pro_info_list[i].province, pro_info_list[i].confirm, pro_info_list[i].dead, pro_info_list[i].heal])
    return jsonify({"data": results})


@main.route('/forecast')
def forecast():
    data = GlobalStatus.all(country='美国')  # 美国数据
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


@main.route('/maps')
def maps():
    data = ChinaStatus.one(province='all')  # 全国数据
    user = current_user()
    statis_data = {
        'time': data.updateTime,
        'name': '中国',
        'data': {
            'confirm': data.confirm,
            'heal': data.heal,
            'dead': data.dead,
            'nowConfirm': data.nowConfirm
        }
    }
    return render_template('dashboard/maps.html', data=statis_data, u=user, name='中国')


@main.route('/mapChartData', methods=['POST'])
def getMapData():
    countryName = request.form["name"]
    results = []
    name_info = Country().one(name=countryName)
    APIType = name_info.APIType
    if APIType == 'basic':  # 全国疫情数据
        pro_info_list = ChinaStatus.all(city='all')
    elif APIType == 'foreign':  # 世界疫情数据，某国家疫情数据
        pro_info_list = GlobalStatus().all(country=countryName)
    else:
        pro_info_list = []
    for pro_infos in pro_info_list:
        if pro_infos.province == 'all':
            continue
        results.append({'name': pro_infos.province, 'value': pro_infos.nowConfirm})
    return jsonify({"data": results})
