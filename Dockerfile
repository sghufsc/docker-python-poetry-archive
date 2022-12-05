FROM python:3.10

ENV HOME=/usr/local/lib

RUN curl -sSL https://install.python-poetry.org | python -

ENV PATH=$HOME/.poetry/bin:$PATH

WORKDIR /app

CMD ["poetry", "--version"]
