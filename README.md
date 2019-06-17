# sparkdocker

#build image (spark & springboot app)
sh build-images.sh
#run image (spark & springboot app)
docker-compose up

#verify
spark-master : localhost:8080
spark-worker : localhost:8081
spring-boot : localhost:8090
