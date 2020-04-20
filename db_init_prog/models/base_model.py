import time
from sqlalchemy import Column, Integer, String, DateTime, Float, create_engine
from sqlalchemy.orm import Query, sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from datetime import datetime
import urllib.parse
import pymysql



def utctime():
    return int(time.time())


class BaseMixin(object):
    updateTime = Column(DateTime, default=datetime.now(), primary_key=True)
    confirm = Column(Integer, nullable=False, default=0)
    heal = Column(Integer, nullable=False, default=0)
    dead = Column(Integer, nullable=False, default=0)
    nowConfirm = Column(Integer, nullable=False, default=0)
    healRate = Column(Float, nullable=False, default=0.0)
    deadRate = Column(Float, nullable=False, default=0.0)

    @classmethod
    def new(cls, form):
        m = cls()
        for name, value in form.items():
            setattr(m, name, value)
        return m

