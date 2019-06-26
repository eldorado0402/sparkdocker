#export SPARK_MASTER_HOST=`hostname`
#!/bin/bash

export SPARK_HOME=/spark
export SPARK_WORKER_WEBUI_PORT=8081
# turn on bash's job control
set -m

. "/spark/sbin/spark-config.sh"
. "/spark/bin/load-spark-env.sh"

#echo $SPARK_CONF_DIR &
# Start the primary process and put it in the background
 #/Users/eldorado0402/spark/spark-2.3.3-bin-hadoop2.7/sbin/start-master.sh &
cd /${SPARK_HOME}/bin && /${SPARK_HOME}/sbin/../bin/spark-class org.apache.spark.deploy.master.Master --ip 127.0.01 --port 7077 --webui-port 7080 &
 #./start-master.sh
# Start the helper process
#/Users/eldorado0402/spark/spark-2.3.3-bin-hadoop2.7/sbin/start-slave.sh spark://127.0.0.1:4000
/${SPARK_HOME}/sbin/../bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port 8081  spark://127.0.0.1:7077
# the my_helper_process might need to know how to wait on the
# primary process to start before it does its work and returns


# now we bring the primary process back into the foreground
# and leave it there
fg %1


