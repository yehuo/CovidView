import time

from sqlalchemy import Unicode, Column

from models.base_model import db, SQLMixin


class Board(SQLMixin, db.Model):
    __tablename__='Board'
    # 板块列表，目前只有两个板块，news和users
    title = Column(Unicode(50), nullable=False)
