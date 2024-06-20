FROM        node:20-alpine

RUN         mkdir -p /srv
COPY        ./package.json /srv
WORKDIR     /srv
RUN         npm install

COPY        . /srv/
CMD         npm run start