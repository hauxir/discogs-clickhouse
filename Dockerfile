FROM clickhouse/clickhouse-server:latest

COPY clickhouse_config.xml /etc/clickhouse-server/config.d/custom_config.xml
COPY clickhouse-data.tar.gz /tmp/
RUN tar -xzf /tmp/clickhouse-data.tar.gz -C /var/lib/ && \
    rm /tmp/clickhouse-data.tar.gz && \
    chown -R clickhouse:clickhouse /var/lib/clickhouse
EXPOSE 8123 9000
