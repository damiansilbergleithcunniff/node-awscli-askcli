FROM damiansilbergleithcunniff/node-with-awscli:2.0.0.1
LABEL maintainer="dcunniff@gmail.com"  nodeVersion="8.9.3" version="2.0.0"
LABEL description="Basic Docker image with Node, Python3, AWS CLI and ASK CLI and Sceptre"

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g ask-cli

CMD ["/bin/bash"]
