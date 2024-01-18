## Description

## Installation

```bash
$ npm install
```

## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Comandos úteis

### Comandos para instalar o docker:

```bash
$ sudo apt update
$ sudo apt install apt-transport-https ca-certificates curl software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt update
$ sudo apt list --upgradable
$ sudo apt install docker-ce
$ docker --version
```

### Comandos para atualizar a versão do node:

```bash
$ sudo npm cache clean -f
$ sudo npm install -g n
$ sudo n latest
$ node -v
$ sudo n latest
$ hash -r
$ node -v
```

### Comando usado para iniciar o projeto com NestJS:

```bash
$ npx @nestjs/cli new gestao-publica-popular-backend
```

### Comandos para fazer o build dos containers:

```bash
$ sudo docker build -t gpp-backend .
$ sudo docker build -f ./postgres.Dockerfile --build-arg DB_PASSWORD=$(grep -E 'DB_PASSWORD' dev.env | xargs) -t gpp-postgres .
```

### Comandos para executar os containers:

```bash
$ sudo docker run -p 3000:3000 gpp-backend
$ sudo docker run --name gpp_postgres -e POSTGRES_PASSWORD=$(grep -E 'DB_PASSWORD' dev.env | xargs) -d -p 5432:5432 -v volume_postgres:/var/lib/postgresql/data gpp-postgres
```

### Substring no bash:

```bash
echo "chave=valor" | awk -F'=' '{print $2}'
```
