#@REF: https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
FROM node:12.16.3-stretch
RUN apt-get update && \
    apt-get install libsecret-1-dev -y 
EXPOSE 34444
USER node
# so we can do npm install -g
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
# so we can access the globally installed optic binary easily
ENV PATH=${PATH}:${NPM_CONFIG_PREFIX}/bin
ENV NODE_ENV=production
RUN npm install -g @useoptic/cli@^8
ENV DEBUG "optic*"
RUN mkdir /home/node/optic-workspace
WORKDIR /home/node/optic-workspace
ENTRYPOINT [ "api" ]