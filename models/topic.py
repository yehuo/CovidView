import time

from sqlalchemy import String, Integer, Column, Text, UnicodeText, Unicode

from models.base_model import SQLMixin, db
from models.user import User
from models.collect import Collect
from models.board import Board
from models.reply import Reply


class Topic(SQLMixin, db.Model):
    __tablename__='Topic'
    views = Column(Integer, nullable=False, default=0)
    title = Column(String(50), nullable=False)
    content = Column(String(255), nullable=False)
    user_id = Column(Integer, nullable=False)
    board_id = Column(Integer, nullable=False)
    link = Column(String(255))

    @classmethod
    def new(cls, form, user_id):
        form['userID'] = user_id
        m = super().new(form)
        return m

    @classmethod
    def get(cls, id):
        m = cls.one(id=id)
        m.views += 1
        m.save()
        return m

    def user(self):
        u = User.one(id=self.user_id)
        return u

    def replies(self):
        ms = Reply.all(topic_id=self.id)
        return ms

    def reply_count(self):
        count = len(self.replies())
        return count

    def collects(self):
        l = Collect.all(topic_id=self.id)
        return l

    def board(self):
        b = Board.one(id=self.board_id)
        return b
