FROM nginx:1.18.0
#dockerfile 里面的命令只试用于build时候

# 将自定义启动脚本复制到容器中
COPY start.sh /start.sh

# 赋予启动脚本执行权限
RUN chmod +x /start.sh

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo 'Asia/Shanghai' >/etc/timezone 

# 设置容器入口点为启动脚本
ENTRYPOINT ["/start.sh"]
