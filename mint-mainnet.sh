#!/bin/bash
for i in {1..32}
do
   echo "Minting $i times"
   ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 
done