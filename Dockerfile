FROM python:3.11

ENV HOME=/usr/local/lib

RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PATH=$HOME/.poetry/bin:$PATH

RUN poetry --version

RUN poetry new app
WORKDIR /app

CMD ["poetry", "--version"]
