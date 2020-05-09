from flask import (
    render_template,
    request,
    redirect,
    session,
    url_for,
    Blueprint,
    send_from_directory,
    flash
)
from models.user import User
from routes.helper import current_user

main = Blueprint('index', __name__)


@main.route("/")
def index():
    u = current_user()
    return render_template("./login/login.html", user=u)


# 邮箱注册
def m_register(info):
    form = info
    u = User.m_register(form)
    if u is None:
        # 邮箱已存在(exist)
        return render_template("./login/login.html", user=u, m='m_reg_e')
    elif u == 'f':
        # 邮箱格式错误
        return render_template("./login/login.html", user=u, m='m_reg_a')
    else:
        # 邮箱注册成功
        return render_template("./login/login.html", user=u, m='m_reg_s')


# 邮箱登录
def m_login(info):
    pass


@main.route("/send_activate/<int:user_id>")
def send_activate(user_id):
    user = User.one(User.id == user_id).first()
    if user.status:
        return redirect(".home")
    token = user.generate_confirmation_token()
    send_confirm_email(user=user, token=token)
    flash(u'激活邮件已发送，请注意查收邮箱')
    return render_template("user/activate.html")


# 邮件链接登录
@main.route("/activation/<token>")
def activation(token):
    if current_user.confirm(token):
        flash(u'账户已成功激活！')
        return redirect(url_for(".home"))
    else:
        flash(u'激活失败，请重试')
        return render_template("user/activate.html")  # 到激活界面


# 邮箱登录页面
@main.route("/mail_login", methods=['POST'])
def mail_login():
    form = request.form
    u = User.validate_login(form)
    if form['type'] == 'r':
        page = m_register(form)
    elif form['type'] == 'l':
        page = m_login(form)
    return page


# 普通注册函数
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


# 普通登录函数
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


# 普通登录页面
@main.route("/login", methods=['POST'])
def login():
    form = request.form
    u = User.validate_login(form)
    if form['type'] == 'r':
        page = b_register(form)
    elif form['type'] == 'l':
        page = b_login(form)
    return page


@main.route('/quit')
def quit():
    session.clear()
    return redirect(url_for('.index'))


@main.route('/images/<filename>')
def image(filename):
    return send_from_directory('images', filename)
