FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

#ENV PORT 3000
#EXPOSE $PORT

VOLUME ["logs:/app/data"]

CMD ["node", "app.js"]