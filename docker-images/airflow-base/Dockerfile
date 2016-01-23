FROM debian:jessie
MAINTAINER guangyang


RUN apt-get update -y && apt-get install -y \
    curl \
    net-tools \
    unzip \
    python \
    ruby \
    git \
    vim-nox \
    tcpdump \
    screen \
    ruby-dev \
    cmake \
    pkg-config \
    libffi-dev \
    libssl-dev \
    libmysqlclient-dev \
    python-dev \
    python-psycopg2 \
    python-matplotlib \
    python-lxml \
    python-scipy \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Get most updated pip cos im so hipster
RUN curl -s https://bootstrap.pypa.io/get-pip.py > get-pip.py \
 && python get-pip.py

ADD plushy_requirements.txt /home/dev/plushy_requirements.txt
RUN pip install -r /home/dev/plushy_requirements.txt

# Custom Airflow Fork
RUN git clone https://github.com/gy8/airflow.git \
 && cd airflow \
 && git checkout feat_postgres_check \
 && python setup.py develop

WORKDIR /home/dev
ENV HOME /home/dev
ENV AIRFLOW_VERSION 1.6.2
ENV AIRFLOW_HOME /home/dev/airflow_config
ENV PYTHONPATH /home/dev/plushy
