FROM apache/iceberg-rest-fixture:1.11.0
USER root

COPY postgresql-42.7.12.jar /usr/lib/iceberg-rest/postgresql.jar
RUN chown iceberg:iceberg /usr/lib/iceberg-rest/postgresql.jar
USER iceberg:iceberg
CMD ["java", "-cp", "iceberg-rest-adapter.jar:postgresql.jar", "org.apache.iceberg.rest.RESTCatalogServer"]
