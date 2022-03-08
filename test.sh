set -e
docker pull alpine:edge
docker build --no-cache -t local-dcycle-ledger-image .

docker run --rm -v $(pwd)/examples:/data local-dcycle-ledger-image -f /data/sample.dat reg
