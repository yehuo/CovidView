from flask import (
    render_template,
    request,
    redirect,
    url_for,
    Blueprint,
)


from models.board import Board
from routes.helper import current_user

main = Blueprint('board', __name__)


@main.route("/add", methods=["POST"])
def add():
    # 添加主题
    form = request.form
    current_user()
    Board.new(form)
    return redirect(url_for('topic.index'))

