cd ./genesis-generator/networkFiles
cd ./keys

NODE_ID=1
for d in */; do
    echo "$d node-$NODE_ID/"
    cp ../genesis.json $BESU_DIR/node-$NODE_ID/
    sudo rm -rf $BESU_DIR/node-$NODE_ID/data/*
    cp $d/* $BESU_DIR/node-$NODE_ID/data/
    ((NODE_ID = NODE_ID + 1))
done
