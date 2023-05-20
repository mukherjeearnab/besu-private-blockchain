export BESU_DIR=$PWD

cd ./genesis-generator

sudo chown -R $USER ./networkFiles
rm -rf ./networkFiles

docker-compose up

# cd $BESU_DIR

# bash scripts/generate-dir-struct.sh

cd $BESU_DIR

bash scripts/copy-crypto.sh
