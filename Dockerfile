FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y locales curl \
    && rm -rf /var/lib/apt/lists/* \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=${LANG} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* 

RUN curl -fsSL https://ollama.com/install.sh | sh

CMD ollama serve