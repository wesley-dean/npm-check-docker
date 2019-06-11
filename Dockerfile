FROM node:11
WORKDIR /app
RUN npm install -g npm-check npm-lint npm-audit
CMD npm install && npm-audit && npm-lint ; npm-check
