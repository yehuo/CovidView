from flask import (
    render_template,
    Blueprint)
from models.data_china import ChinaStatus
from models.data_global import GlobalStatus
from models.c_history import ChinaHistory
from models.g_history import GlobalHistory
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
    print(countryName)
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
    # 支持两种预测：China/Global,首页显示Global
    data = GlobalStatus.one(continent='全球')  # 全球数据
    user = current_user()
    global_data = {
        'time': data.updateTime,
        'name': '全球',
        'data': {
            'confirm': data.confirm,
            'heal': data.heal,
            'dead': data.dead,
            'nowConfirm': data.nowConfirm
        }
    }
    return render_template('dashboard/forecast.html', data=global_data, u=user, type='Global')


@main.route('/forecast/<string:type>')
def forecast_detail(type):
    # 支持两种预测：China/Global,首页显示Global
    user = current_user()
    if type == 'Global':
        return redirect('.forcast')
    elif type == 'China':
        data = ChinaStatus().one(province='all')
        china_data = {
            'time': data.updateTime,
            'name': '中国',
            'data': {
                'confirm': data.confirm,
                'heal': data.heal,
                'dead': data.dead,
                'nowConfirm': data.nowConfirm
            }
        }
        return render_template('dashboard/maps.html', data=china_data, u=user, type='China')
    else:
        print("no such forecast type")


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


@main.route('/lineChartData', methods=['POST'])
def getLineData():
    type = request.form["type"]
    his_infos = []
    forecast_infos = []
    date_row = ['type']
    heal_row = ['heal']
    dead_row = ['dead']
    confirm_row = ['confirm']
    new_row = ['newAddConfirm']
    now_row = ['nowConfirm']
    import_row = ['imporedCase']
    if type == 'China':  # 国内疫情预测
        history = ChinaHistory.all()
        for daily_infos in history[:-2]:  # 最后一天不做为画图项
            date_row.append(daily_infos.date)
            heal_row.append(daily_infos.heal)
            dead_row.append(daily_infos.dead)
            confirm_row.append(daily_infos.confirm)
            now_row.append(daily_infos.nowConfirm)
            import_row.append(daily_infos.importedCase)
        his_infos = [date_row, heal_row, dead_row, confirm_row, now_row, import_row]
    elif type == 'Global':  # 世界疫情预测
        history = GlobalHistory.all()
        for daily_infos in history[:-2]:
            date_row.append(daily_infos.date)
            heal_row.append(daily_infos.heal)
            dead_row.append(daily_infos.dead)
            confirm_row.append(daily_infos.confirm)
            new_row.append(daily_infos.newAddConfirm)
        his_infos = [date_row, heal_row, dead_row, confirm_row, new_row]
    else:
        pro_info_list = []
    return jsonify({
        "history": his_infos,
        "forecast": forecast_infos
    })
