###  项目引入logtash依赖

```
<dependency>
    <groupId>net.logstash.logback</groupId>
    <artifactId>logstash-logback-encoder</artifactId>
    <version>5.0</version>
</dependency>
```



### logback-spring.xml添加logtash日志

```java
<appender name="stash" class="net.logstash.logback.appender.LogstashTcpSocketAppender">
    <destination>192.168.10.11:4560</destination>
    <!-- encoder必须配置,有多种可选 -->
    <encoder charset="UTF-8" class="net.logstash.logback.encoder.LogstashEncoder" />
</appender>
```

```
<root level="DEBUG"> 
    <appender-ref ref="stash"/>
</root>
```

### 启动ELK

需要在elk配置好索引等，已经配好，可以参考

访问:http://ip:5601/

需要创建索引模式，引入配置好的索引

然后就可以看到日志了

