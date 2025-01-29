FROM ubuntu:latest

RUN curl -fsSL https://ollama.com/install.sh | sh

RUN ollama pull deepseek-r1:1.5b

CMD ollama run deepseek-r1:1.5b