FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install build-essential cmake doxygen \
     libboost-system-dev libboost-dev python-dev gettext git \
     libboost-date-time-dev libboost-filesystem-dev \
     libboost-iostreams-dev libboost-python-dev libboost-regex-dev \
     libboost-test-dev libedit-dev libgmp3-dev libmpfr-dev texinfo

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install tzdata

RUN mkdir /app

RUN cd /app && git clone git://github.com/ledger/ledger.git

WORKDIR /app/ledger

RUN ./acprep update

ENTRYPOINT [ "./ledger" ]
