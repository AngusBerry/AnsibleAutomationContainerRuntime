FROM registry.access.redhat.com/ubi8/ubi

RUN yum update -y

#install python3    
RUN yum install -y python39

#RUN yum install -y python3-pip
RUN yum install -y openssh
RUN yum install -y openssl-devel
RUN yum install -y git 
RUN yum install -y gcc
RUN yum install -y make 


RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py --user
RUN pip3 install ansible
RUN pip3 install passlib
RUN pip3 install dnspython
#RUN pip3 install just
RUN pip3 install paramiko

ENV PATH=$PATH:~/.local/bin



