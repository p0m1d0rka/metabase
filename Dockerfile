FROM metabase/metabase:v0.38.0
ADD https://github.com/enqueue/metabase-clickhouse-driver/releases/download/0.7.3/clickhouse.metabase-driver.jar /plugins/
ADD https://download.oracle.com/otn-pub/otn_software/jdbc/211/ojdbc8.jar /plugins
RUN chmod 744 /plugins/clickhouse.metabase-driver.jar
RUN chmod 744 /plugins/ojdbc8.jar