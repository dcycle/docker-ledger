[![CircleCI](https://circleci.com/gh/dcycle/docker-ledger.svg?style=svg)](https://circleci.com/gh/dcycle/docker-ledger)

Dockerized version of the [Ledger-cli accounting software](https://github.com/ledger/ledger).

Features
-----

* Free and open-source.
* No GUI, this project is strictly command-line.
* Double-entry accounting system: data entry will fail if your numbers do not add up.
* This docker image is automatically rebuilt weekly with the latest code, and made available [on the Docker hub](https://hub.docker.com/r/dcycle/ledger/).

Examples
-----

    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/sample.dat reg
    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/drewr3.dat reg
    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/sample.dat balance
    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/drewr3.dat balance
    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/drewr3.dat register Groceries
    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/drewr3.dat balance Groceries
    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/drewr3.dat register payee "Organic"
    docker run --rm -v $PWD/examples:/data dcycle/ledger:1 -f /data/drewr3.dat cleared

Resources and links:
-----

* [Ledger 3 manual](https://www.ledger-cli.org/3.0/doc/ledger3.html).
* [dcycle/ledger the Docker Hub](https://hub.docker.com/r/dcycle/ledger/).
* [dcycle/ledger the Github](https://github.com/dcycle/docker-ledger/).
* [Command-line, double-entry accounting for agencies](https://blog.dcycle.com/blog/2019-03-04).
