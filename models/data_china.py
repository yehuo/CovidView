import time
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Column, Integer, String, Float
from models.base_model import SQLMixin, APIMixin, db


class ChinaStatus(APIMixin, db.Model):
    __tablename__ = 'Data_china'
    country = Column(String(255), nullable=False, default='China')
    province = Column(String(255),nullable=False,default='all')
    city = Column(String(255), nullable=False, default='all')
    suspect = Column(Integer, nullable=False, default=0)
    healRate = Column(Float, nullable=False, default=0.0)
    deadRate = Column(Float, nullable=False, default=0.0)
