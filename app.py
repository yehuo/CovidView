from flask import Flask
from flask_mail import Mail
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
from datetime import datetime

from config_info import dbConfig, appConfig
import urllib.parse


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
    app.config['MAIL_SERVER'] = "smtp.qq.com"
    app.config['MAIL_PORT'] = 465
    app.config['MAIL_USER_SSL'] = True
    app.config['MAIL_USERNAME'] = "2497473001@qq.com"
    app.config['MAIL_PASSWORD'] = "foepmlrajfdveaii"  # POP3
    # app.config['MAIL_PASSWORD'] = "gkzcfhyfefwaeadh"  # IMAP
    app.config['MAIL_DEFAULT_SENDER'] = ("Luck:E", "2497473001@qq.com")
    mail = Mail()
    mail.init_app(app)

    db.init_app(app)
    register_routes(app)
    app.template_filter()(myfirst)
    app.template_filter()(formatte_time)
    app.template_filter()(date_time)
    app.template_filter()(safe_str)
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
