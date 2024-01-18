FROM postgres:latest


ARG DB_PASSWORD
ENV POSTGRES_PASSWORD=$DB_PASSWORD
RUN echo "hello there"
RUN echo $POSTGRES_PASSWORD

# Copie o arquivo de inicialização do banco de dados para o diretório de inicialização do PostgreSQL
COPY ./docker-entrypoint-initdb.d/init.sql /docker-entrypoint-initdb.d/

# Exponha a porta 5432 para acesso ao banco de dados
EXPOSE 5432

# O volume será montado automaticamente pelo comando "docker run"
VOLUME /var/lib/postgresql/data