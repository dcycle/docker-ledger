set -e
docker pull ubuntu
docker pull dcycle/ledger:1
docker build -t local-dcycle-ledger-image .

docker run --rm -v $(pwd)/examples:/data dcycle/ledger:1 -f /data/sample.dat reg
docker run --rm -v $(pwd)/examples:/data local-dcycle-ledger-image -f /data/sample.dat reg
