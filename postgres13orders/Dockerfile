FROM postgres:13

# Install the PostGIS extension
RUN apt-get update && \
	apt-get install -y postgresql-13-postgis-3 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# This user will be created as the superuser
# PG* are for dev use - while in the container psql will just work (useful for the provisioning)
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=superroot
ENV PGUSER=root 
ENV PGPASSWORD=superroot
VOLUME [ "postgresqlorders/data", "/var/lib/postgresql/data" ]

ADD create-db.sh /docker-entrypoint-initdb.d

CMD ["postgres", "-N", "200"]