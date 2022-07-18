FROM node:latest

WORKDIR /app


ADD  ./app /app

RUN npm install morgan mongoose express connect-flash method-override express-validator express-rate-limit bcrypt connect-mongo ejs express-session luxon mongodb req-flash uuid


EXPOSE 8080

CMD [ "node", "app.js" ]


