
#  租机系统

## 运行条件 

1. 安装 docker 软件
2. 能运行 `docker compose` 命令或安装 `docker-compose`

## 目录结构

1. `app` 目录是软件的目录。放置软件 `billing.jar` 和许可文件  `license.txt`，`run.sh` 可以配置 `mysql` 和 `redis` 的连接配置。
2. `init` 目录放置数据库初始化文件


## 运行

通过命令行下运行 `docker compose up -d`  或者 `docker-compose up -d` 启动服务，第一次启动的时候等数据库初始化完成后，访问 [http://127.0.0.1/](http://127.0.0.1/) 访问主页。


## 授权许可升级

替换 `app/license.txt` 文件重启服务即可。重启服务命令 `docker compose restart`  或者 `docker-compose restart` 