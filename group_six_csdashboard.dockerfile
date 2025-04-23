FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y postgresql postgresql-contrib && apt clean

EXPOSE 5432

RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql

USER postgres

RUN /etc/init.d/postgresql start && psql --command "ALTER USER postgres PASSWORD 'student';"

CMD ["/usr/lib/postgresql/16/bin/postgres", "-D", "/var/lib/postgresql/16/main", "-c", "config_file=/etc/postgresql/16/main/postgresql.conf"]
