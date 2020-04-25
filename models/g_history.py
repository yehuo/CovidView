import time
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Column, Integer, String, DateTime, Float,Date
from models.base_model import SQLMixin, APIMixin, db


class GlobalHistory(SQLMixin, db.Model):
    __tablename__ = 'g_history'
    confirm = Column(Integer, default=0)
    dead = Column(Integer, default=0)
    heal = Column(Integer, default=0)
    date = Column(Date, default='2019-12-31')
    newAddConfirm = Column(Integer, default=0)
    healRate = Column(Float, default=0.0)
    deadRate = Column(Float, default=0.0)

