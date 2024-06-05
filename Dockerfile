# Use uma imagem base mais leve
FROM node:14-alpine

# Configure a variável de ambiente NODE_ENV como 'production'
ENV NODE_ENV=production

# Crie e defina o diretório de trabalho
WORKDIR /usr/src/app

# Copie o package.json
COPY package.json ./

# Instale as dependências de produção
RUN npm install --only=production

# Copie o restante do código da aplicação
COPY . .

# Exponha a porta em que a aplicação irá rodar
EXPOSE 8090

# Comando para iniciar a aplicação
CMD ["node", "app.js"]
