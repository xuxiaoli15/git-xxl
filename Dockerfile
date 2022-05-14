FROM centos:7
LABEL maintainer="1444632893@qq.com"
COPY .inx.repo /etc/yum.repos.d
RUN yum makecache
RUN yum install -y nginx
RUN echo "Hello! This is nginx server" > /usrinxml/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

