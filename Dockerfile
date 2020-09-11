FROM python:3.8-alpine

WORKDIR /usr/src/app

COPY Pipfile* ./
RUN pip install pipenv
RUN pipenv install --system --deploy

COPY . .

#CMD [ "/usr/local/bin/gunicorn --bind 0.0.0.0:8000 --workers 4 hello:app" ]
CMD [ "pipenv", "run", "gunicorn", "--bind", "0.0.0.0:8000", "--workers", "4", "hello:app" ]
