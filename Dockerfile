FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
RUN mkdir data
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=https://myapi.com
EXPOSE 3000
CMD ["npm", "start"]
#ENTRYPOINT ["npm", "start"] - both CMD and this are default instructions but CMD has bit more flexibility
# docker image tag b06 react-app:latest
# making a dummy change to see that the newly pushed image to docker hub has the new tag and able to push quickly
# learned sharing and loding images without using docker hub
# yesterday learned starting containers - todays learnings viewing the logs
# learned executing commands in running containers, start or stop containers, and removing containers
# learned techniques for cleaning the workspace
# downloaded a simple already built sample application and understood JSON and YAML file formats
# started learning about compose file but couldn't finish yesterday