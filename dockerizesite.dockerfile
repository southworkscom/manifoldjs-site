FROM node:8.11.4
# docker build -f dockerizesite.dockerfile -t manifoldjs-site .
WORKDIR /

COPY package*.json ./

RUN npm install npm-install-peers

RUN npm run setup

COPY .nuxt ./.nuxt
COPY assets ./assets
COPY components ./components
COPY environments ./environments
COPY layouts ./layouts
COPY locales ./locales
COPY middleware ./middleware
COPY modules ./modules
COPY pages ./pages
COPY plugins ./plugins
COPY static ./static
COPY store ./store
COPY test ./test
COPY test-e2e ./test-e2e
COPY typings ./typings
COPY utils ./utils
COPY .deployment ./
COPY .nycrc ./
COPY .stylelintrc ./
COPY deploy.cmd ./
COPY LICENSE.txt ./
COPY mocha.opts ./
COPY nightwatch.js ./
COPY nuxt.config.js ./
COPY server.js ./
COPY tsconfig.json ./
COPY tslint.json ./
COPY web.config ./

EXPOSE 8080

CMD  npm run dev
