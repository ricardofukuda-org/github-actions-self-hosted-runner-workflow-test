FROM node:24

WORKDIR /app
COPY src/package.json .
RUN npm install
COPY src/ .
COPY tests/ .
COPY entrypoint.sh .

RUN chmod 700 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]