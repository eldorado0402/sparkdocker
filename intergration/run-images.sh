#docker run --name metatron_prep -p 7080:7080  -p 3000:3000 --hostname=spark-master metatron_prep:1.0.0
docker run -p 7080:7080  -p 3000:3000 --hostname=spark-master --memory=8192M --volume /tmp:/tmp metatron_prep:1.0.0
