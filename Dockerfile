FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=https://myapi.com
EXPOSE 3000
CMD ["npm", "start"]
#ENTRYPOINT ["npm", "start"] - both CMD and this are default instructions but CMD has bit more flexibility