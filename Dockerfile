FROM ubuntu:15.04
run apt-get install -yq wget
RUN wget https://apt.puppetlabs.com/puppetlabs-release-pc1-vivid.deb
RUN dpkg -i puppetlabs-release-pc1-vivid.deb
RUN apt-get update -yq && apt-get upgrade -yq && DEBIAN_FRONTEND=noninteractive apt-get install -yq curl git vim puppet
ADD ./ /etc/puppet
WORKDIR /etc/puppet/
