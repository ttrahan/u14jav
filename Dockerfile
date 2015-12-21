FROM drydock/u14:prod

ADD . /u14jav

RUN /u14jav/install.sh
