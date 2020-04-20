from sqlalchemy import Column, Integer, String, DateTime
from db_init_prog.models.base_model import BaseMixin


class GlobalStatus(BaseMixin):
    __tablename__ = 'Data_global'
    continent = Column(String(255))
    country = Column(String(255))
    province = Column(String(255))
