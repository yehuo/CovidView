import time
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Column, Integer, String, DateTime, Float, Date
from models.base_model import SQLMixin, APIMixin, db


class MultiHistory(SQLMixin, db.Model):
    __tablename__ = 'multi_history'
    confirm = Column(Integer, default=0)
    dead = Column(Integer, default=0)
    heal = Column(Integer, default=0)
    date = Column(Date, default='2019-12-31')
    country = Column(String(255), nullable=False)
