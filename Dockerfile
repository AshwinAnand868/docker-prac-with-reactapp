FROM node:14.16.0-alpine3.13
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=https://myapi.com
EXPOSE 3000
RUN addgroup app && adduser -S -G app app
USER app