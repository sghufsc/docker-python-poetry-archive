FROM python:3.10

ENV HOME=/usr/local/lib

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python -

ENV PATH=$HOME/.poetry/bin:$PATH

WORKDIR /app

CMD ["poetry", "--version"]
