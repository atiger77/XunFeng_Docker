#coding:utf-8 
class Config(object):
    ACCOUNT = 'admin'
    #这个配置文件抽离出来可以自己修改密码和配置，完成后会自动放入对应位置。
    PASSWORD = 'atiger77_ChangeMe'


class ProductionConfig(Config):
    DB = '127.0.0.1'
    PORT = 65521
    DBUSERNAME = 'atiger77'
    DBPASSWORD = 'atiger77_ChangeMe'
    DBNAME = 'xunfeng'
