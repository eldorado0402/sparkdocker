FROM java:8-jdk-alpine

ENV APP_HOME=/myapp
ENV APP_DOWNLOAD_URL=https://github.com/spring-guides/gs-spring-boot-docker.git
ENV APP_EXE_HOME=gs-spring-boot-docker/complete
ENV APP_EXE_FILE=gs-spring-boot-docker-0.1.0.jar
#ENV APP_DOWNLOAD_URL=https://github.com/wonwoo/spring-boot-docker.gi
#ENV APP_EXE_HOME=spring-boot-docker
#ENV APP_EXE_FILE=hola-docker-1.0.0-SNAPSHOT.jar 
#install git
RUN apk update && apk add git
#RUN apk add maven

#install MAVEN
ENV MAVEN_VERSION 3.6.0
ENV MAVEN_HOME /usr/lib/mvn
ENV PATH $MAVEN_HOME/bin:$PATH

RUN wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  mv apache-maven-$MAVEN_VERSION /usr/lib/mvn

#source download
RUN mkdir ${APP_HOME} && cd ${APP_HOME} && git clone ${APP_DOWNLOAD_URL} && cd ${APP_EXE_HOME} && mvn clean package

##RUN cd ${APP_EXE_HOME} 
#&& mvn clean package
VOLUME /tmp
RUN cp ${APP_HOME}/${APP_EXE_HOME}/target/${APP_EXE_FILE} /app.jar
#java -jar target/gs-spring-boot-docker-0.1.0.jar
EXPOSE 8080
CMD ["java","-jar","/app.jar"]

