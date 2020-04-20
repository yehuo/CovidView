from flask import (
    render_template,
    request,
    redirect,
    session,
    url_for,
    Blueprint,
    send_from_directory)
from models.user import User
from routes.helper import current_user

main = Blueprint('index', __name__)


@main.route("/")
def index():
    u = current_user()
    return render_template("./login/login.html", user=u)


def b_register(info):
    # 使用通过POST发来的form信息
    form = info
    u = User.register(form)
    if u is None:
        # 用户名已存在(exist)
        return render_template("./login/login.html", user=u, m='register_e')
    elif u == 'f':
        # 用户名或者密码长度错误(again)
        return render_template("./login/login.html", user=u, m='register_a')
    else:
        # 注册成功(success)
        return render_template("./login/login.html", user=u, m='register_s')


def b_login(info):
    form = info
    u = User.validate_login(form)
    if u is None:
        # 登录失败(fail)
        return render_template("./login/login.html", user=u, m='login_f')
    else:
        session['user_id'] = u.id
        session.permanent = True
        return redirect(url_for('dashboard.index'))


@main.route("/login", methods=['POST'])
def login():
    form = request.form
    u = User.validate_login(form)
    if form['type'] == 'r':
        page=b_register(form)
    elif form['type'] == 'l':
        page=b_login(form)
    return page


@main.route('/quit')
def quit():
    session.clear()
    return redirect(url_for('.index'))


@main.route('/images/<filename>')
def image(filename):
    return send_from_directory('images', filename)
