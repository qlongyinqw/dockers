FROM centos:7

RUN mkdir -p /opt/prog && \
	curl -L -o jdk.tar.gz -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz" && \
	tar -C /opt/prog -zxvf jdk.tar.gz && \
	mv /opt/prog/jdk1.8.0_191 /opt/prog/jdk && \
	rm jdk.tar.gz

ENV JAVA_HOME=/opt/prog/jdk
ENV PATH=$JAVA_HOME/bin:$PATH

RUN java -version
