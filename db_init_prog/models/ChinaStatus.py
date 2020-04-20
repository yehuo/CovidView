import time
from db_init_prog.models.base_model import BaseMixin
from sqlalchemy import Column, Integer, String, DateTime


class Data_china():
    __tablename__ = 'Data_china'
    updateTime = Column(DateTime, default=datetime.now(), primary_key=True)
    confirm = Column(Integer, nullable=False, default=0)
    heal = Column(Integer, nullable=False, default=0)
    dead = Column(Integer, nullable=False, default=0)
    nowConfirm = Column(Integer, nullable=False, default=0)
    healRate = Column(Float, nullable=False, default=0.0)
    deadRate = Column(Float, nullable=False, default=0.0)
    country = Column(String(255), nullable=False, default='China', primary_key=True)
    province = Column(String(255))
    city = Column(String(255), default='null', primary_key=True)
    suspect = Column(Integer, nullable=False, default=0)
