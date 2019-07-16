FROM java:openjdk-8-jdk

RUN curl -s http://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz |tar -xz -C /usr/local/
RUN cd /usr/local && ln -s spark-2.4.3-bin-hadoop2.7 spark

WORKDIR /usr/local/spark
COPY libtaos.so /usr/lib/
COPY taos-jdbcdriver-1.0.0-dist.jar ./jars/
RUN ldconfig && cd conf && cp log4j.properties.template log4j.properties && \
    sed -i 's/log4j.rootCategory=INFO/log4j.rootCategory=WARN/' log4j.properties

CMD ["/bin/bash"]
