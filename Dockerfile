FROM python:3.11

MAINTAINER Gustavo Simões <gustavo.simoes@grad.ufsc.br>

RUN curl -sSL https://install.python-poetry.org | python3 -

RUN poetry --version

WORKDIR /app

CMD ["poetry", "--version"]
