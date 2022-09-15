FROM ghcr.io/protobomb/npm-dev:main

RUN apt-get update

# install serverless
RUN npm install -g serverless

# clean apt cache
RUN apt-get clean autoclean
RUN apt-get autoremove -y
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/