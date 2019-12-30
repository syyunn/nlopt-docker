FROM amazonlinux:latest

RUN yum install -y wget yes

RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh

RUN yes 'yes' | bash Anaconda3-2019.10-Linux-x86_64.sh

COPY  lumiML-conda-env.yml .

RUN conda env create -f lumiML-conda-env.yml
