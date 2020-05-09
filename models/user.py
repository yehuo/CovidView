from sqlalchemy import Column, String,Integer
from models.base_model import SQLMixin, db
import time
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
import base64
import hashlib
import time


class User(SQLMixin, db.Model):
    __tablename__ = 'User'
    username = Column(String(50), nullable=False)
    password = Column(String(255), nullable=False)
    signature = Column(String(255), nullable=False, default='这个人很懒，什么都没有填')
    img = Column(String(100), nullable=False, default='/images/default_head_pic.jpg')
    location=Column(String(255),default=None)
    mail=Column(String(255),default=None)
    confirm=Column(Integer,default=0)

    # 返回密码hash值+盐值之后的hash值
    @classmethod
    def salted_password(cls, password, salt='$!@><?>HUI&DWQa`'):
        import hashlib

        # 定义hash函数
        def sha256(ascii_str):
            return hashlib.sha256(ascii_str.encode('ascii')).hexdigest()

        hash1 = sha256(password)
        hash2 = sha256(hash1 + salt)

        return hash2

    # 返回hash后的密码
    def hashed_password(self, pwd):
        import hashlib
        p = pwd.encode('ascii')
        s = hashlib.sha256(p)
        return s.hexdigest()

    # 生成用于邮件发送的token
    def generate_confirmation_token(self,expiration=3600):
        s=Serializer(current_app.config['SECRET_KEY'], expiration)
        return s.dumps({'confirm': self.id})

    # 验证token
    def confirm(self, token):
        s = Serializer(current_app.config['SECRET_KEY'])
        try:
            data = s.loads(token)  # 解码
        except Exception as e:
            return False
        if data.get('confirm') != self.id:
            return False
        self.status = True
        db.session.commit()
        return True
    # 检查邮箱是否符合规范
    def mailbox_check(self,address):
        # todo:检查邮箱格式
        return True


    # 邮箱注册
    # unfinished
    @classmethod
    def m_register(cls, form):
        mailbox = form.get('mail', '')
        pwd = form.get('password', '')
        if cls.mailbox_check(mailbox) and len(pwd) > 8 and User.one(mail=mailbox) is None:
            u = User.new(form)
            u.password = u.salted_password(pwd)
            u.confirm=0
            u.save()
            return u
        elif cls.mailbox_check(mailbox)==False or len(pwd) < 8:
            r = 'f'
            return r
        else:
            return None

    # 注册：用户名，密码必须都长度大于2，且用户名未被注册过
    @classmethod
    def register(cls, form):
        name = form.get('username', '')
        pwd = form.get('password', '')
        if len(name) > 2 and len(pwd) > 2 and User.one(username=name) is None:
            u = User.new(form)
            u.password = u.salted_password(pwd)
            u.save()
            return u
        elif len(name) < 3 or len(pwd) < 3:
            r = 'f'
            return r
        else:
            return None

    @classmethod
    def validate_login(cls, form):
        user = User.one(username=form['username'])
        if user is not None and user.password == User.salted_password(form['password']):
            return user
        else:
            return None

    @classmethod
    def update(cls, _id, **kwargs):
        if len(kwargs['name']) > 2 and User.one(username=kwargs['name']) is None:
            super().update(
                id=_id,
                username=kwargs['name'],
                signature=kwargs['signature'],
                updated_time=int(time.time())
            )
            u = User.one(id=_id)
            return u
        elif User.one(username=kwargs['name']) is not None:
            r = 'already'
            return r
        else:
            return None

    @classmethod
    def img_update(cls, _id, **kwargs):
        super().update(
            id=_id,
            img=kwargs['img'],
            updated_time=int(time.time())
        )

        u = User.one(id=_id)
        return u

    @classmethod
    def password_update(cls, _id, **kwargs):
        user = User.one(id=_id)
        if user.password == User.salted_password(kwargs['old_pass']):
            super().update(
                id=_id,
                password=User.salted_password(kwargs['new_pass']),
            )
            return user
        else:
            return None
