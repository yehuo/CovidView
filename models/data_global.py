import time
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Column, Integer, String, DateTime
from models.base_model import SQLMixin, APIMixin, db


class GlobalStatus(APIMixin, db.Model):
    __tablename__ = 'Data_global'
    continent = Column(String(255))
    country = Column(String(255))
    province = Column(String(255))
