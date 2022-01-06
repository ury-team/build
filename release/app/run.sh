MYSQL_HOST=db
MYSQL_USER=app
MYDSQL_PWD=P4hVNvqRMlqr3tq9u6serFCEkA
REDIS_HOST=redis
REDIS_PWD=FWAjnQm8QBWWLrLSx5Z7VA
java -Dspring.datasource.url=jdbc:mysql://$MYSQL_USER:$MYDSQL_PWD@$MYSQL_HOST:3306/billing?useUnicode=true\&characterEncoding=utf-8\&serverTimezone=Hongkong\&allowMultiQueries=true -Dspring.redis.host=$REDIS_HOST -Dspring.redis.password=$REDIS_PWD  -Dserver.port=1024 -Duser.timezone=Asia/Shanghai -jar ./billing.jar