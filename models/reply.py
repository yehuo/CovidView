import time

from sqlalchemy import Column, Integer, UnicodeText, String

from models.base_model import db, SQLMixin
from models.user import User


class Reply(SQLMixin, db.Model):
    __tablename__='Reply'
    content = Column(String(255), nullable=False)
    topic_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)

    def user(self):
        u = User.one(id=self.user_id)
        return u

    @classmethod
    def new(cls, form, user_id):
        form['user_id'] = user_id
        m = super().new(form)
        return m
