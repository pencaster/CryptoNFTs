#!/bin/bash
for i in {1..78}
do
   echo "Minting $i times"
   ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env devnet --keypair ~/.config/solana/id.json 
   SOLANA balance
done