FROM christroutner/ct-base-ubuntu
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

RUN apt-get update -y

#Set the working directory to be the home directory
WORKDIR /home/safeuser

# Switch to user account.
USER safeuser
# Prep 'sudo' commands.
#RUN echo 'abcd8765' | sudo -S pwd

# Clone the repository
WORKDIR /home/safeuser
RUN git clone https://github.com/ActorForth/bch-api-1
WORKDIR /home/safeuser/bch-api-1
RUN git checkout regtest
RUN npm install --silent

# Generate documentation
RUN npm run docs

EXPOSE 3000

COPY start-local-testnet.sh start-local-testnet.sh
CMD ["./start-local-testnet.sh"]
