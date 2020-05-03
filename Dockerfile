FROM node


RUN apt update && \
    apt install libsecret-1-dev -y && \
    mkdir /home/userworkspace && \
    cd /home && \
    npm install @useoptic/cli && \
    cd userworkspace && export DEBUG="optic*"
# optic api port
EXPOSE 34444 34444

WORKDIR /home/userworkspace

# Debug mode
ENV DEBUG optic*
# ENTRYPOINT [ "" ]
ENTRYPOINT [ "../node_modules/@useoptic/cli/bin/run" ]
# ^ above lets you run optic cli
