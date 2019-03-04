FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install build-essential cmake doxygen \
     libboost-system-dev libboost-dev python-dev gettext git \
     libboost-date-time-dev libboost-filesystem-dev \
     libboost-iostreams-dev libboost-python-dev libboost-regex-dev \
     libboost-test-dev libedit-dev libgmp3-dev libmpfr-dev texinfo

# See https://askubuntu.com/a/1098881
# We cannot avoid setting the timezone upon installation of tzdata, it seems.
# Montreal is as good a place as any.
ENV TZ=America/Montreal
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y install tzdata

RUN mkdir /app

RUN cd /app && git clone git://github.com/ledger/ledger.git

WORKDIR /app/ledger

RUN ./acprep update

ENTRYPOINT [ "./ledger" ]
