FROM circleci/ruby:2.5.3

RUN sudo apt-get update && \
  sudo apt-get install software-properties-common && \
  sudo apt-add-repository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" -y && \
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
  sudo apt-get update && \
  sudo apt-get -y install ansible && \
  curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sudo sh
