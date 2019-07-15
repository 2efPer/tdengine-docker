FROM centos:7.6.1810

RUN yum -y install wget unzip cmake make gcc gcc-c++ && mkdir /app
WORKDIR /app

RUN wget https://github.com/taosdata/TDengine/archive/master.zip && unzip master.zip && cd TDengine-master && mkdir build && cd build && cmake .. && cmake --build .

CMD ["./build/bin/taosd","-c","test/cfg"]
