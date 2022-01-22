FROM node:16.13.2
WORKDIR /app
RUN git clone https://github.com/seejohnrun/haste-server.git /app
COPY config.js /app
RUN npm install
VOLUME ["/app/data"]
EXPOSE 7777
CMD ["npm", "start"]