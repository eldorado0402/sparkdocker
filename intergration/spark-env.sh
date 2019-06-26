export SPARK_MASTER_PORT=7080
export SPARK_WORKER_WEBUI_PORT=8081
export SPARK_HOME=/spark
export SPARK_MASTER_HOST=$(ip addr list eth0 |grep "inet " |cut -d' ' -f6|cut -d/ -f1)
export SPARK_LOCAL_IP=$(ip addr list eth0 |grep "inet " |cut -d' ' -f6|cut -d/ -f1)
