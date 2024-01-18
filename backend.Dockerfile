FROM node:21

# Cria o diretório de trabalho dentro do contêiner
WORKDIR /app

COPY package*.json ./
COPY dev.env ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]