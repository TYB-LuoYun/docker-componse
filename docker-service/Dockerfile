from  openjdk:8-jre
# author
LABEL author="tyb"

ARG jarDir
ARG jarName

# 创建目录
RUN mkdir -p /app/jar
#操作目录
WORKDIR /app/jar
# 挂载目录
VOLUME /app/jar


COPY ${jarDir}/${jarName}.jar /app/jar/app.jar


ENTRYPOINT ["java","-jar","app.jar"]
