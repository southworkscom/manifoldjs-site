FROM node:8.11.4
# docker build -f dockerizesite.dockerfile -t manifoldjs-site .
WORKDIR /dockerImage

COPY package*.json ./

RUN npm i npm@latest -g

RUN npm run setup

COPY . .

EXPOSE 3000

CMD  npm run dev
