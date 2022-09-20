FROM "node:latest"
ENV TERM xterm-256color

WORKDIR /home/app

COPY package*.json ./

RUN npm install

COPY . .

RUN cd /home/app
EXPOSE 3000:3000

CMD bash -c "${DEFAULT_DOCKER_CMD}"
