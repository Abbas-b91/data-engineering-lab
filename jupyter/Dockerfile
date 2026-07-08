FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    openjdk-21-jdk \
    curl \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir \
    pyspark==4.1.2 \
    jupyterlab
RUN mkdir -p /opt/spark/conf /workspace

COPY  ../spark/jars/  /usr/local/lib/python3.10/site-packages/pyspark/jars/

ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
ENV SPARK_CONF_DIR=/opt/spark/conf

WORKDIR /workspace

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser", "--notebook-dir=/workspace"]
