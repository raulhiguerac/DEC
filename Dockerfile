FROM python:3.9

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app

COPY ingest_data.py ingest_data.py
COPY ingest_data_green_taxi.py ingest_data_green_taxi.py

ENTRYPOINT [ "python", "ingest_data_green_taxi.py"]