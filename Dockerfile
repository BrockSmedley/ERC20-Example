FROM node:11

# sanity check
RUN echo -n "node: " && node -v && echo -n "yarn: " && yarn -v && sleep 1 && echo

# install ovm deps
RUN mkdir /src
WORKDIR /src
COPY . . 
RUN yarn install

# import source code
COPY . .

# ENGAGE
CMD yarn test