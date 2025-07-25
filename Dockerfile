FROM python:3.8-slim-buster as build

RUN apt-get update && apt-get install -y build-essential python3-dev

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements

COPY . .

EXPOSE 80
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]