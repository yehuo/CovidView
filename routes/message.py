from flask_mail import Message, Mail
from flask import (
    render_template,
    request,
    redirect,
    url_for,
    Blueprint,
)

from routes import *
from routes.helper import current_user, login_required
from models.message import Messages
from models.reply import Reply
from models.topic import Topic

# from config import admin_mail

main = Blueprint('message', __name__)
mail = Mail()


@main.route("/add", methods=["POST"])
@login_required
def add():
    form = request.form.to_dict()
    form['receiver_id'] = int(form['receiver_id'])
    u = current_user()
    form['sender_id'] = u.id
    m = Messages.new(form)
    return redirect(url_for('.index'))


@main.route('/')
@login_required
def index():
    u = current_user()
    message = Messages.all(receiver_id=u.id, type='reply')
    print('message', message)
    return render_template('message/center.html', u=u, received=message)


@main.route('/at')
@login_required
def at():
    u = current_user()
    message = Messages.all(receiver_id=u.id, type='at')
    return render_template('message/at.html', u=u, received=message)


@main.route('/collected')
@login_required
def collected():
    u = current_user()
    message = Messages.all(receiver_id=u.id, type='collect')
    return render_template('message/collected.html',u=u,received=message)
