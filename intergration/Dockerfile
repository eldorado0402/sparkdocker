FROM spark-base:2.3.3

RUN apk --no-cache add procps && apk --update add coreutils

#ENV SPARK_LOCAL_IP spark-master
ENV SPARK_MASTER_PORT 7077
#ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_WEBUI_PORT 7080
ENV SPARK_MASTER_LOG /spark/log
#ENV SPARK_MASTER_HOST spark-master
#for slaves

ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs
#ENV SPARK_MASTER "spark://localhost:7077"


COPY start-all.sh /
#master port
EXPOSE 8080 7077 6066
#slaves port
EXPOSE 8081

#all command
CMD ["/bin/bash", "/start-all.sh"]
