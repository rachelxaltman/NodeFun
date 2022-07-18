FROM node:16

WORKDIR /app

COPY ./package.json ./

ADD  ./app /app

RUN npm install morgan mongoose express connect-flash method-override express-validator express-rate-limit bcrypt

COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]


