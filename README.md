# Data Engineering Lab

A modern end-to-end Data Engineering environment built with Docker,
Apache Spark, Apache Kafka, Apache Iceberg, and MinIO.

This project demonstrates how to build a local Data Lakehouse
architecture for developing and testing batch and streaming data
pipelines.

------------------------------------------------------------------------

## Architecture

``` text
                 +------------------+
                 |      Kafka       |
                 |  Event Streaming |
                 +--------+---------+
                          |
                          v
                 +------------------+
                 | Apache Spark     |
                 | Batch & Streaming|
                 +--------+---------+
                          |
                          v
                 +------------------+
                 | Apache Iceberg   |
                 | Table Format     |
                 +--------+---------+
                          |
                          v
                 +------------------+
                 | MinIO (S3 API)   |
                 | Object Storage   |
                 +--------+---------+
                          |
                          v
                 +------------------+
                 | Jupyter Notebook |
                 | Development      |
                 +------------------+
```

------------------------------------------------------------------------

## Technologies

-   Apache Spark
-   Apache Kafka
-   Apache Iceberg
-   MinIO (S3 Compatible Object Storage)
-   PySpark
-   Docker
-   Docker Compose
-   Jupyter Notebook

------------------------------------------------------------------------

## Features

-   Local Data Engineering environment
-   Spark standalone cluster
-   Kafka event streaming
-   Iceberg catalog support
-   S3-compatible object storage using MinIO
-   Interactive development with Jupyter Notebook
-   Docker-based deployment
-   Reproducible development environment

------------------------------------------------------------------------

## Project Structure

``` text
.
├── docker/
├── notebooks/
├── spark/
├── configs/
├── scripts/
├── data/
├── docker-compose.yml
└── README.md
```

------------------------------------------------------------------------

## Getting Started

### Clone the repository

``` bash
git clone https://github.com/<your-username>/data-engineering-lab.git
cd data-engineering-lab
```

### Start the environment

``` bash
docker compose up -d
```

### Open Jupyter

http://localhost:8888

### Spark Master UI

http://localhost:8080

### MinIO Console

http://localhost:9001

------------------------------------------------------------------------

## Current Components

-   Spark Master
-   Spark Worker(s)
-   Jupyter Notebook
-   MinIO
-   Kafka
-   Iceberg Catalog

------------------------------------------------------------------------

## Roadmap

-   [x] Docker environment
-   [x] Spark Cluster
-   [x] MinIO Object Storage
-   [ ] Iceberg Catalog
-   [ ] Kafka Producer
-   [ ] Spark Structured Streaming
-   [ ] Streaming ETL Pipeline
-   [ ] SQL Analytics on Iceberg
-   [ ] Airflow Integration
-   [ ] Monitoring with Prometheus & Grafana
-   [ ] Kubernetes Deployment

------------------------------------------------------------------------

## Learning Goals

The purpose of this project is to gain hands-on experience with modern
Data Engineering technologies and understand how they work together in a
real-world Data Lakehouse architecture.

Topics covered include:

-   Distributed data processing
-   Object storage
-   Streaming data pipelines
-   Table formats
-   Containerization
-   Infrastructure automation

------------------------------------------------------------------------

## License

This project is intended for educational and portfolio purposes.
