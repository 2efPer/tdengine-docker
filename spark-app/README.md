### 构建镜像
> docker build -t spark . 

进入容器 ，$TDENGINE_INSTANCE_NAME 是tdengine镜像名字
> docker run --link=$TDENGINE_INSTANCE_NAME -it spark /bin/bash


###Spark连接样例  
> val jdbcDF = spark.read
  .format("jdbc")
  .option("url", "jdbc:TAOS://IP:6035/log?user=test&password=test")
  .option("dbtable", "log.log")
  .option("user", "test")
  .option("password", "test")
  .load()
  
其中，IP应该为tdengine镜像ip，6035端口是TDEngine默认的数据连接端口。  
