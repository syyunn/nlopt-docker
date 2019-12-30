FROM amazonlinux:latest

RUN yum install -y wget yes

RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh

RUN yes 'yes' | bash Anaconda3-2019.10-Linux-x86_64.sh

#RUN Anaconda3-2019.10-Linux-x86_64.sh

#
#COPY requirements.txt .
#ENV PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig/:$PKG_CONFIG_PATH
#
#
#RUN pip install -t ./lib -r requirements.txt
