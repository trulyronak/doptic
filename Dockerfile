FROM node

# ENV LANG=C.UTF-8 \
#     JAVA_HOME=/usr/lib/jvm/default-jvm/jre \
#     PATH=${PATH}:${JAVA_HOME}/bin \
#     CHE_HOME=/home/user/che 

RUN apt update && \
    apt install libsecret-1-dev -y && \
    mkdir /home/userworkspace && \
    cd /home && \
    npm install @useoptic/cli && \
    cd userworkspace
# optic api port
EXPOSE 34444 34444

# set the port that your api runs on here
EXPOSE 3000 3000
WORKDIR /home/userworkspace

# Debug mode
# ENTRYPOINT [ "" ]
ENTRYPOINT [ "../node_modules/@useoptic/cli/bin/run" ]
# ^ above lets you run optic cli