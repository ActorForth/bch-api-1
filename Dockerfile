FROM christroutner/ct-base-ubuntu
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

RUN apt-get update -y

USER safeuser
#Set the working directory to be the home directory
RUN mkdir /home/safeuser/bch-api
WORKDIR /home/safeuser/bch-api
COPY ./ /home/safeuser/bch-api/

# Prep 'sudo' commands.
#RUN echo 'abcd8765' | sudo -S pwd

# # Clone the repository
# WORKDIR /home/safeuser
# RUN git clone https://github.com/Permissionless-Software-Foundation/bch-api
# WORKDIR /home/safeuser/bch-api
RUN npm install

# Generate documentation
# RUN npm run docs

EXPOSE 3000

VOLUME /home/safeuser/bch-api/node_modules

# COPY start-local-testnet.sh start-local-testnet.sh
CMD ["ls -a", "node_modules"]

CMD ["npm", "start"]
