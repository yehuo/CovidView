import time
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Column, Integer, String, Float
from models.base_model import SQLMixin, APIMixin, db


class Country(db.Model):
    __tablename__ = 'Country'
    name = Column(String(255), nullable=False)
    APIType = Column(String(255), nullable=False)
    level = Column(String(255), nullable=False)
    id = Column(Integer, nullable=False, primary_key=True, autoincrement=True)

    @classmethod
    def one(cls, **kwargs):
        ms = cls.query.filter_by(**kwargs).first()
        return ms
