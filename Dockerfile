FROM node:11
WORKDIR /app
RUN npm install -g npm-check npm-lint npm-audit
COPY ./run_checks.sh /app
ENTRYPOINT ["/app/run_checks.sh"]
CMD ["index.js"]
