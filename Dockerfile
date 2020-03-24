FROM centos:7.4.1708
MAINTAINER vincent

#Helpful utils, but only sudo is required
# 设置编码
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
# 设置时区
RUN cp -af /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


######## JDK8
#Note that ADD uncompresses this tarball automatically
ADD jdk-8u144-linux-x64.tar.gz /opt
WORKDIR /opt/jdk1.8.0_144
RUN alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 1
RUN alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_144/bin/jar 1
RUN alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_144/bin/javac 1
RUN echo "JAVA_HOME=/opt/jdk1.8.0_144" >> /etc/environment

[root@cntest-devops-01 docker]# cat centos7-jdk8/Dockerfile 
FROM centos:7.4.1708
MAINTAINER vincent

#Helpful utils, but only sudo is required
# 设置编码
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
# 设置时区
RUN cp -af /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


######## JDK8
#Note that ADD uncompresses this tarball automatically
ADD jdk-8u144-linux-x64.tar.gz /opt
WORKDIR /opt/jdk1.8.0_144
RUN alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 1
RUN alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_144/bin/jar 1
RUN alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_144/bin/javac 1
RUN echo "JAVA_HOME=/opt/jdk1.8.0_144" >> /etc/environment
