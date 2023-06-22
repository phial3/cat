+ DockerHub地址: https://hub.docker.com/r/meituaninc/cat
+ docker镜像打包
  + 进入项目根目录：docker build -f docker/Dockerfile cat:3.0.0 .


# mysql8
## 创建用户并授权
```shell
CREATE USER 'user1'@'%' IDENTIFIED BY '07fa533360d9'; 

# 修改密码
update mysql.user set password=password('新密码') where user='user1';

##给该用户添加权限
##all 可以替换为 select,delete,update,create,drop
GRANT all PRIVILEGES on xxxdb.* to 'user1'@'%' WITH GRANT OPTION;

flush privileges;

## 查看用户权限
show grants for 'user1';

```