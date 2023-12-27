FROM python:3.10.8-slim-bullseye
 
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get upgrade -y
RUN apt-get install pkg-config python3-dev default-libmysqlclient-dev build-essential -y

RUN python -m pip install pip
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

EXPOSE 5000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]