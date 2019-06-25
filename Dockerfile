FROM node:11
WORKDIR /app
RUN npm install -g npm-check npm-lint npm-audit jshint
COPY ./run_checks.sh /usr/local/bin/run_checks.sh
RUN chmod 755 /usr/local/bin/run_checks.sh
CMD [ "/usr/local/bin/run_checks.sh", "/app/index.js" ]
