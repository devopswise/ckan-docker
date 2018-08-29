FROM ckan/ckan:latest
USER root

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends \
       python-pip git iputils-ping net-tools ssh vim pwgen apache2-utils

#RUN pip install -U pip setuptools virtualenv

#RUN pip install awscli ansible==2.4.0

RUN echo 'syntax on' >> /etc/vim/vimrc

USER ckan

#COPY script/.bashrc /root/.bashrc
#COPY script/cdt /cdt

#ENV PATH="${PATH}:/"

#ENTRYPOINT ["/bin/bash","-c"]
#CMD ["sleep infinity"]
