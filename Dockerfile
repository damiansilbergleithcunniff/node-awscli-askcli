FROM damiansilbergleithcunniff/node-with-awscli:8.9.3
LABEL maintainer="dcunniff@gmail.com"  nodeVersion="8.9.3" version="1.0.0"
LABEL description="Basic Docker image with Node, AWS CLI and ASK CLI" 

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g ask-cli

CMD ["/bin/bash"]
