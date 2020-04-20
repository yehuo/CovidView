import time
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Column, Integer, String, DateTime, Float
from sqlalchemy.orm import Query
from datetime import datetime
import json

db = SQLAlchemy()


def utctime():
    return int(time.time())


class SQLMixin(object):
    id = Column(Integer, primary_key=True, nullable=False, autoincrement=True)
    updateTime = Column(DateTime, default=datetime.now())
    createTime = Column(DateTime, default=datetime.now())

    # 增：以字典form的形式将数据提交，填充入类中
    @classmethod
    def new(cls, form):
        m = cls()
        for name, value in form.items():
            setattr(m, name, value)
        db.session.add(m)
        db.session.commit()
        # 最后返回一个已经被赋值的数据库表对象
        return m

    # 删：根据id删除数据
    # todo:修改为根据特定参数删除而非根据ID删除
    @classmethod
    def delete(cls, id):
        cls.query.filter_by(id=id).delete()
        db.session.commit()

    # 改：根据kwargs参数修改id的一部分值
    # todo:修改为根据指定参数选定行
    @classmethod
    def update(cls, id, **kwargs):
        # cls.query的方法，未来将会在子类（同时也继承了sqlalchemy的子类）里实现
        m = cls.query.filter_by(id=id).first()
        for name, value in kwargs.items():
            setattr(m, name, value)
        db.session.add(m)
        db.session.commit()

    # 查A：返回所有符合条件kwargs的内容
    @classmethod
    def all(cls, **kwargs):
        ms = cls.query.filter_by(**kwargs).order_by(cls.updateTime.desc()).all()
        return ms

    # 查B：返回第一条符合条件kwargs的内容
    @classmethod
    def one(cls, **kwargs):
        ms = cls.query.filter_by(**kwargs).first()
        return ms

    # 将当前数据对象存入数据库
    def save(self):
        db.session.add(self)
        db.session.commit()


class APIMixin(object):
    id = Column(Integer, autoincrement=True, primary_key=True)
    updateTime = Column(String(50), default=str(datetime.now()))
    confirm = Column(Integer, nullable=False)
    heal = Column(Integer, nullable=False, default=0)
    dead = Column(Integer, nullable=False, default=0)
    nowConfirm = Column(Integer, nullable=False, default=0)

    @classmethod
    def new(cls, form):
        m = cls()
        for name, value in form.items():
            setattr(m, name, value)
        db.session.add(m)
        db.session.commit()
        # 最后返回一个已经被赋值的数据库表对象
        return m

    # 删：根据id删除数据
    # todo:修改为根据特定参数删除而非根据ID删除
    @classmethod
    def delete(cls, id):
        cls.query.filter_by(id=id).delete()
        db.session.commit()

    # 改：根据kwargs参数修改id的一部分值
    # todo:修改为根据指定参数选定行
    @classmethod
    def update(cls, id, **kwargs):
        # cls.query的方法，未来将会在子类（同时也继承了sqlalchemy的子类）里实现
        m = cls.query.filter_by(id=id).first()
        for name, value in kwargs.items():
            setattr(m, name, value)
        db.session.add(m)
        db.session.commit()

    # 查A：返回所有符合条件kwargs的内容
    @classmethod
    def all(cls, **kwargs):
        ms = cls.query.filter_by(**kwargs).all()
        return ms

    # 查B：返回第一条符合条件kwargs的内容
    @classmethod
    def one(cls, **kwargs):
        ms = cls.query.filter_by(**kwargs).first()
        return ms

    @classmethod
    # todo:test
    def top(cls, num,name,**kwargs):
        ms = cls.query.filter_by(**kwargs).order_by(getattr(cls, name).desc()).limit(num)
        return ms

    @classmethod
    def tojson(cls, inst):
        d = dict()
        for col in cls.__table__.columns:
            v = getattr(inst, col.name)
            v=str(v)
            d[col.name] = v
        return json.dumps(d)

    # 将当前数据对象存入数据库
    def save(self):
        db.session.add(self)
        db.session.commit()

    @property
    def serialize(self):
        return self.tojson(self)
