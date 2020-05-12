from flask import Flask, current_app, render_template
from flask_mail import Mail, Message
from flask.json import JSONEncoder
from models.base_model import db

from routes.index import main as index_routes
from routes.dashboard import main as dashboard_routes
from routes.topic import main as topic_routes
from routes.user import main as user_route
from routes.board import main as board_route
from routes.message import main as message_route
from routes.news import main as news_route
from routes.reply import main as reply_route

import time
from datetime import datetime,date
from config_info import dbConfig, appConfig
import urllib.parse

class CustomJSONEncoder(JSONEncoder):
    def default(self, o):
        try:
            if isinstance(o,date):
                return o.isoformat()
            iterable=iter(o)
        except TypeError:
            pass
        else:
            return list(iterable)
        return JSONEncoder.default(self,o)


def myfirst(list):
    if len(list) == 0:
        return None
    else:
        return list[0]


def formatte_time(datetime_item):
    # local_time = time.localtime(int(datetime_item))
    # str_time = time.strftime("%Y-%m-%d %H:%M:%S", local_time)
    # time1 = datetime.strptime(str_time, '%Y-%m-%d %H:%M:%S')
    return datetime_item


def date_time(str_time):
    str = str_time.split('-', 1)[1].split(' ')[0]
    return str


def safe_str(str):
    str = str.replace('&quot;', '"')
    str = str.replace('&amp;', '&')
    str = str.replace('&lt;', '<')
    str = str.replace('&gt;', '>')
    str = str.replace('&nbsp;', ' ')
    return str


def register_routes(app):
    app.register_blueprint(index_routes)
    app.register_blueprint(dashboard_routes, url_prefix='/dashboard')
    app.register_blueprint(topic_routes, url_prefix='/topic')
    app.register_blueprint(news_route, url_prefix='/news')
    app.register_blueprint(user_route, url_prefix='/user')
    app.register_blueprint(board_route, url_prefix='/board')
    app.register_blueprint(message_route, url_prefix='/message')
    app.register_blueprint(reply_route, url_prefix='/reply')



def configured_app():
    app = Flask(__name__)
    app.secret_key = appConfig.secret_key
    app.config[
        'SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:{}@127.0.0.1:3306/test?charset=utf8mb4'.format(
        urllib.parse.quote_plus(dbConfig.password)
    )
    # mails configuration
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    db.init_app(app)
    register_routes(app)
    app.template_filter()(myfirst)
    app.template_filter()(formatte_time)
    app.template_filter()(date_time)
    app.template_filter()(safe_str)
    app.json_encoder=CustomJSONEncoder
    return app


if __name__ == '__main__':
    app = configured_app()
    config = dict(
        debug=True,
        host='localhost',
        port=2000,
        threaded=True
    )
    app.run(**config)
