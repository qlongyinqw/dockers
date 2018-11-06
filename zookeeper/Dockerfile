FROM dayin/jdk:8u191

ENV ZOO_USER=zookeeper \
    ZOO_CONF_DIR=/conf \
    ZOO_DATA_DIR=/data \
    ZOO_DATA_LOG_DIR=/datalog \
    ZOO_LOG_DIR=/logs \
    ZOO_PORT=2181 \
    ZOO_TICK_TIME=2000 \
    ZOO_INIT_LIMIT=5 \
    ZOO_SYNC_LIMIT=2 \
    ZOO_AUTOPURGE_PURGEINTERVAL=0 \
    ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 \
    ZOO_MAX_CLIENT_CNXNS=60

ARG DISTRO_NAME=zookeeper-3.4.13

RUN  mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR" && \
    curl -L -o zookeeper.tar.gz -k "http://mirrors.hust.edu.cn/apache/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz" && \
    tar -C /opt/prog -zxvf zookeeper.tar.gz && \
    mv /opt/prog/$DISTRO_NAME /opt/prog/zookeeper && \
    rm zookeeper.tar.gz 
    
WORKDIR /opt/prog/zookeeper
VOLUME ["$ZOO_DATA_DIR", "$ZOO_DATA_LOG_DIR", "$ZOO_LOG_DIR"]

EXPOSE $ZOO_PORT 2888 3888
ENV ZOOKEEPER_HOME=/opt/prog/zookeeper
ENV PATH=$ZOOKEEPER_HOME/bin:$PATH

COPY docker-entrypoint.sh $ZOOKEEPER_HOME/bin
ENTRYPOINT ["docker-entrypoint.sh"]
CMD zkServer.sh start-foreground $ZOO_CONF_DIR/zoo.cfg

