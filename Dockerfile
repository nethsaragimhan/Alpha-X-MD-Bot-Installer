FROM node:latest
# AlphaX V2 Dockerfile 🔒

RUN apt-get update && apt-get -y upgrade
RUN apt-get install ffmpeg -y
RUN git clone https://github.com/nethsaragimhan/ALPHA-X-MD /root/AlphaXmd
WORKDIR /root/AlphaXmd/
RUN yarn install --no-audit
RUN npm i -g supervisor
RUN npm i -g concurrently

CMD ["npm", "start"]

# default path: /root/ALPHA-X-MD/
