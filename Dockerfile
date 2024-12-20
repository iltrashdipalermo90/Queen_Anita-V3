
FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN gitclone https://github.com/iltrashdipalermo96/Queen_Anita-V3
  

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm start"]
