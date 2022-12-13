FROM python:3.11

MAINTAINER Gustavo Simões <gustavo.simoes@grad.ufsc.br>

ENV HOME=/usr/local/lib

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

ENV PATH=$HOME/.poetry/bin:$PATH

RUN poetry --version

WORKDIR /app

CMD ["poetry", "--version"]
