FROM python:3.7.16-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /csapi
RUN apt-get update && apt-get install -y libgl1-mesa-dev libglib2.0-0
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt --no-cache-dir
COPY . .