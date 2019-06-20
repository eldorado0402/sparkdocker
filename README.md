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

#app
spark word count jar 파일은 따로 다운로드 해야함.
용량 문제로 git에 커밋 되지 않음
