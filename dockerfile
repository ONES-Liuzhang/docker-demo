FROM node:14-slim

COPY . /app
WORKDIR /app

RUN npm install

RUN groupadd -r lzgroup && useradd -r -g lzgroup lz \
&& chown -R lz:lzgroup /app

USER lz
EXPOSE 8088
CMD ["npm", "run", "server"]