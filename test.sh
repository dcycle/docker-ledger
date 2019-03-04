set -e
docker pull ubuntu
docker pull dcycle/ledger
docker build -t local-dcycle-ledger-image .

docker run --rm -v $(pwd)/examples:/data dcycle/ledger -f /data/sample.dat reg
docker run --rm -v $(pwd)/examples:/data local-dcycle-ledger-image -f /data/sample.dat reg
