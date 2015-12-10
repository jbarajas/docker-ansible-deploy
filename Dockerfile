FROM ubuntu:14.04

MAINTAINER hardlyhaki@gmail.com

RUN apt-get -y update && apt-get install -y python-yaml \
                                            python-jinja2 \
                                            git

# Setting up for Ansible based installation
RUN git clone http://github.com/ansible/ansible.git /tmp/ansible
WORKDIR /tmp/ansible
ENV PATH /tmp/ansible/bin:/sbin:/usr/sbin:/usr/bin
ENV ANSIBLE_LIBRARY /tmp/ansible/library
ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH

# Cloning Ansible library for use
RUN git clone http://github.com/yourusername/yourrepo.git /tmp/example
ADD inventory /etc/ansible/hosts

# Executing Ansible playbook
WORKDIR /tmp/examples
RUN ansible-playbook site.yml -c local

EXPOSE 22 3000
ENTRYPOINT [“/usr/bin/foo”]
