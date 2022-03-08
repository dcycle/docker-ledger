set -e
docker pull alpine:3
docker build -t local-dcycle-ledger-image .

docker run --rm -v $(pwd)/examples:/data local-dcycle-ledger-image -f /data/sample.dat reg
