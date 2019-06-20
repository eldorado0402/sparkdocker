# sparkdocker

#build image (spark & springboot app)
sh build-images.sh
#run image (spark & springboot app)
#deploy option을 포함하려면 compatibility 옵션을 주어야 함
docker-compose --compatibility up

#verify
spark-master : localhost:8080
spark-worker : localhost:8081
spring-boot : localhost:3000
