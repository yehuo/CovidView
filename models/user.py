from sqlalchemy import Column, String, Integer,Boolean
from models.base_model import SQLMixin, db
import time
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
import smtplib
from email.mime.text import MIMEText
import time
from flask import current_app
from flask_mail import Message

mail_type = ['qq', '163']


class User(SQLMixin, db.Model):
    __tablename__ = 'User'
    username = Column(String(50), nullable=False, default='mail_user')
    password = Column(String(255), nullable=False)
    signature = Column(String(255), nullable=False, default='这个人很懒，什么都没有填')
    img = Column(String(100), nullable=False, default='/images/default_head_pic.jpg')
    location = Column(String(255), default=None)
    mail = Column(String(255), default=None)
    confirm = Column(Boolean(), default=False)

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
    def generate_confirmation_token(self, expiration=3600):
        s = Serializer('$!@><?>HUI&DWQa`', expiration)
        return s.dumps({'confirm': self.id})

    # 发送验证邮件
    # todo:将ip,port改为公网IP
    # todo:将mail,password写入到config文件里
    def confirm_email_sender(self):
        print('email have been sent')
        try:
            smtp_client = smtplib.SMTP_SSL('smtp.qq.com', port=465)
            smtp_client.login('2497473001@qq.com', 'lhnnogvhbyvtdiha')
            token = self.generate_confirmation_token()
            link = '127.0.0.1:5000/activate/' + str(token)
            msg = MIMEText('<a href=' + link + '>click here to activate your account</a>', 'html', 'utf-8')
            msg['Subject'] = 'Covid View Account Confirm Message'
            msg['From'] = '[Flasky]Administrator'
            msg['To'] = self.mail
            smtp_client.sendmail('2497473001@qq.com', self.mail, msg.as_string())
            smtp_client.close()
            return True
        except Exception as e:
            print(e)
            return False

    # 验证token
    @classmethod
    def confirm_set(cls, token):
        s = Serializer('$!@><?>HUI&DWQa`')
        try:
            data = s.loads(token)  # 解码
            print(data)
        except Exception as e:
            return False
        print(data.get('confirm'))
        u_id = data.get('confirm')
        u = cls.one(id=u_id)
        u.confirm = True
        u.save()
        return u

    # 检查邮箱是否符合规范
    @classmethod
    def mailbox_check(cls, address):
        parts = address.split('@')
        if address[-4:] == '.com' and len(parts) == 2 and (parts[1][:-4] in mail_type):
            return True
        return False

    # 邮箱注册
    # unfinished
    @classmethod
    def m_register(cls, form):
        print(form)
        mailbox = form.get('mail', '')
        pwd = form.get('password', '')
        if cls.mailbox_check(mailbox) and len(pwd) > 8 and User.one(mail=mailbox) is None:
            u = User.new(form)
            u.password = u.salted_password(pwd)
            u.confirm = False
            u.save()
            if not u.confirm_email_sender():
                u.confirm_email_sender()  # 可能第一次连接有问题
            return u
        elif cls.mailbox_check(mailbox) == False or len(pwd) < 8:
            return 'f'  # 邮箱不符合规范
        else:
            return None  # 邮箱已存在

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
    def m_validate_login(cls, form):
        user = User.one(mail=form['mail'])
        if user is not None and user.password == User.salted_password(form['password']) and user.confirm is True:
            return user
        else:
            if user.password != User.salted_password(form['password']):
                print('error password')
            elif user.confirm is False:
                print(user.confirm)
            else:
                print(user.confirm)
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
