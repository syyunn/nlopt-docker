FROM amazonlinux:latest

RUN yum install -y wget yes

RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh

RUN bash Anaconda3-2019.10-Linux-x86_64.sh -b && \
    echo "export PATH="/root/anaconda3/bin:$PATH"" >> ~/.bashrc && \
    /bin/bash -c "source ~/.bashrc"

ENV PATH /root/anaconda3/bin:$PATH

RUN conda env create -f lumiML-conda-env.yml
