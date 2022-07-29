FROM python:3.10

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python -

CMD ["poetry", "--version"]
