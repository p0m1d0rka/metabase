FROM metabase/metabase:v0.39.2
ADD https://github.com/enqueue/metabase-clickhouse-driver/releases/download/0.7.3/clickhouse.metabase-driver.jar /plugins/
RUN chmod 744 /plugins/clickhouse.metabase-driver.jar
ADD https://download.oracle.com/otn-pub/otn_software/jdbc/211/ojdbc8.jar /plugins
RUN chmod 744 /plugins/ojdbc8.jar
ADD https://github.com/Markenson/csv-metabase-driver/releases/download/1.1.0/csv.metabase-driver.jar /plugins/
RUN chmod 744 /plugins/csv.metabase-driver.jar