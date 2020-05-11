import time

from sqlalchemy import Column, Integer, UnicodeText

from models.base_model import db, SQLMixin
from models.user import User


class Collect(SQLMixin, db.Model):
    __tablename__='Collect'
    topic_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)

    def user(self):
        u = User.one(id=self.user_id)
        return u

    @classmethod
    def add(cls, topic_id, user_id):
        form=dict()
        form['topic_id']=topic_id
        form['user_id']=user_id
        collect= super().new(form)
        return collect
