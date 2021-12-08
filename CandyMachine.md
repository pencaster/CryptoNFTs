1. Prepare assets
https://docs.metaplex.com/create-candy/prepare-assets
https://hackmd.io/@levicook/HJcDneEWF


Unix Time Stamp: https://www.unixtimestamp.com/


# connection type - options are devnet and mainnet-beta
NEXT_PUBLIC_CONNECTION_NETWORK=devnet

# rpc http endpoints (ex: https://api.devnet.solana.com)
NEXT_PUBLIC_SOLANA_RPC_HOST_DEVNET=https://api.devnet.solana.com
NEXT_PUBLIC_SOLANA_RPC_HOST_MAINNET_BETA=https://api.mainnet-beta.solana.com



$ solana --version
$ cd js
$ yarn install
$ yarn bootstrap


seller_fee_basis_points = royalty %* 100
[3:02 AM]
So 
500 is 5%, 
1000 is 10%
10000 is 100%
[3:02 AM]
Why? because floating point maths and IEEE754.
[3:02 AM]
But you probably know that.


solana-keygen recover --force --outfile  ~/.config/solana/mainnet.json 

solana-keygen new --outfile ~/.config/solana/devnet.json


solana config set --url https://solana--devnet.datahub.figment.io/apikey/d3e731703252f255a2eaa357e254cd57

solana config set --url https://solana--mainnet.datahub.figment.io/apikey/d3e731703252f255a2eaa357e254cd57

solana config set  --keypair ~/.config/solana/id.json
solana config set  --keypair ~/.config/solana/mainnet.json

$ solana config get

$ solana balance


Config File: C:\Users\krumh\.config\solana\cli\config.yml
RPC URL: https://api.devnet.solana.com
WebSocket URL: wss://api.devnet.solana.com/ (computed)
Keypair Path: C:\Users\krumh\.config\solana\id.json 

ts-node  ./js/packages/cli/src/candy-machine-cli.ts  help


Recover Funds!!!!
--------------
MAINNET
ts-node ./js/packages/cli/src/candy-machine-cli.ts  withdraw   --env mainnet-beta  --keypair ~/.config/solana/mainnet.json  
DEVNET
ts-node ./js/packages/cli/src/candy-machine-cli.ts  withdraw    --env devnet --keypair ~/.config/solana/id.json  
_____________

trace:
 --log-level trace

BUG: Cannot add to candy machine
https://github.com/metaplex-foundation/metaplex/issues/884


#Get $SOL
solana airdrop 10


****************************************************************
DEVNET-MINTING
----------------------------------------------------------------
1. clear temp cache
2. resources starting from 0
.................................................................
solana config set --url https://solana--devnet.datahub.figment.io/apikey/d3e731703252f255a2eaa357e254cd57
solana config set  --keypair ~/.config/solana/id.json
solana config get
solana balance
.................................................................
ts-node ./js/packages/cli/src/candy-machine-cli.ts upload 10_86 -n 78  --env devnet --keypair ~/.config/solana/id.json  
arweave-nft 78_178  --force-upload  --assets-from-json   -k ~/.config/arweave/arweave-key-tZUgSIBcxE6O69uIRx4WU3G7-qmP25Tu_JevmjU7Vxw.json -e devnet
ts-node ./js/packages/cli/src/candy-machine-cli.ts upload 78_178 -n 101  --env devnet --keypair ~/.config/solana/id.json  
ts-node ./js/packages/cli/src/candy-machine-cli.ts verify --env devnet --keypair ~/.config/solana/id.json 
ts-node  ./js/packages/cli/src/candy-machine-cli.ts create_candy_machine --price 0.000001  --env devnet --keypair ~/.config/solana/id.json --sol-treasury-account 3mgEMZZ4jYCCc9N461PdDD423BEHWL7yCmwwKSozowE8 
.................................................................
wallet public key: 3mgEMZZ4jYCCc9N461PdDD423BEHWL7yCmwwKSozowE8
create_candy_machine finished. candy machine pubkey: E5oaNckedBsVfk1mWoBR41w4q1ZeuVBWuM3MF8q2Rdr6
{"program":{"uuid":"9zh6vw","config":"9zh6vwTfZX3yBHmaUPFNZRoACDq5ipUfcYSEyQy9H1HE"}
.................................................................
ts-node ./js/packages/cli/src/candy-machine-cli.ts update_candy_machine --env devnet --keypair ~/.config/solana/id.json  --price 0.8 --date "05 Dec 2021 18:00:00 GMT"
 - updated startDate timestamp: 1638683100 (05 Dec 2021 05:45:00 GMT)
 - updated price: 800000000 lamports (0.8 SOL)
.................................................................
 ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env devnet --keypair ~/.config/solana/id.json  

****************************************************************


****************************************************************
MAINNET-MINTING
----------------------------------------------------------------

.................................................................
solana config set --url https://solana--mainnet.datahub.figment.io/apikey/d3e731703252f255a2eaa357e254cd57
solana config set  --keypair ~/.config/solana/mainnet.json
solana config get
solana balance
.................................................................
ts-node ./js/packages/cli/src/candy-machine-cli.ts upload 10_86 -n 78  --env mainnet-beta  --keypair ~/.config/solana/mainnet.json
arweave-nft 10_86  --force-upload  --assets-from-json   -k ~/.config/arweave/arweave-key-tZUgSIBcxE6O69uIRx4WU3G7-qmP25Tu_JevmjU7Vxw.json -e mainnet-beta
ts-node ./js/packages/cli/src/candy-machine-cli.ts upload 10_86 -n 78  --env mainnet-beta  --keypair ~/.config/solana/mainnet.json
ts-node ./js/packages/cli/src/candy-machine-cli.ts verify --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 
ts-node  ./js/packages/cli/src/candy-machine-cli.ts create_candy_machine --env mainnet-beta  --keypair ~/.config/solana/mainnet.json --price 0.000001 --sol-treasury-account GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz

---------------------------------------------------------------------------
FOR Sale Candy Machine:
***************************************************************************
wallet public key: GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
create_candy_machine finished. candy machine 
pubkey: 4o2MsoDxwybuN74qZRDsZL7bmgxFm2WEzvf3D8pyhzq4
config: FPyp5LQDqZC2sD4XyK13hUARJHoh4DapASiqdUaV2MW
***************************************************

.................................................................
Minting Candy Machine!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
wallet public key: GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
create_candy_machine finished. candy machine pubkey: 48QNCC4iHBbu1SdfhKcEg2oDmfCW1aSuFGFFz8fNN79B
REACT_APP_CANDY_MACHINE_CONFIG=EErwtjeeXdbReVVySxRaf35QeYPgkNr8RMpRNHY1UnSq
REACT_APP_CANDY_MACHINE_ID=48QNCC4iHBbu1SdfhKcEg2oDmfCW1aSuFGFFz8fNN79B
REACT_APP_TREASURY_ADDRESS=GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
.................................................................
wallet public key: GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
create_candy_machine finished. candy machine pubkey: BBe3ADD1C1GfX2BqXkzaemrhKNYKhpPJUUfxknaBSFcK
 - updated startDate timestamp: 1638727200 (05 Dec 2021 18:00:00 GMT)
 - updated price: 800000000 lamports (0.8 SOL
.................................................................
wallet public key: GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
create_candy_machine finished. candy machine pubkey: 8bwHCA6dUsPNryYUqm7BnW225xZAcnwPQu1uCqpPdnTM
.................................................................
ts-node ./js/packages/cli/src/candy-machine-cli.ts update_candy_machine --env mainnet-beta  --keypair ~/.config/solana/mainnet.json  --price 0.0001 --date "05 Dec 2021 17:00:00 GMT"
.................................................................
 ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env mainnet-beta  --keypair ~/.config/solana/mainnet.json   

****************************************************************



****************************************************************
MAINNET-MINTING
----------------------------------------------------------------
1. clear temp cache
2. resources starting ffrom 0
3. max 10
.................................................................
solana config set --url https://solana--mainnet.datahub.figment.io/apikey/d3e731703252f255a2eaa357e254cd57
solana config set  --keypair ~/.config/solana/mainnet.json
solana config get
solana balance
.................................................................
ts-node ./js/packages/cli/src/candy-machine-cli.ts upload assets_11_20 -n 10   --env mainnet-beta  --keypair ~/.config/solana/mainnet.json   
arweave-nft assets_11_20  --force-upload  --assets-from-json   -k ~/.config/arweave/arweave-key-tZUgSIBcxE6O69uIRx4WU3G7-qmP25Tu_JevmjU7Vxw.json -e mainnet-beta
ts-node ./js/packages/cli/src/candy-machine-cli.ts upload assets_11_20 -n 10  --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 
ts-node ./js/packages/cli/src/candy-machine-cli.ts verify --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 
ts-node  ./js/packages/cli/src/candy-machine-cli.ts create_candy_machine --env mainnet-beta  --keypair ~/.config/solana/mainnet.json --price 0.000001 --sol-treasury-account GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
.................................................................

.................................................................
 ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env mainnet-beta  --keypair ~/.config/solana/mainnet.json  

****************************************************************



****************************************************************
MAIN NET-MINTING
----------------------------------------------------------------
1. clear temp cache
2. resources starting ffrom 0
3. max 10
.................................................................
solana config set --url https://solana--mainnet.datahub.figment.io/apikey/d3e731703252f255a2eaa357e254cd57
solana config set  --keypair ~/.config/solana/mainnet.json
solana config get
solana balance
.................................................................
ts-node ./js/packages/cli/src/candy-machine-cli.ts upload assets_11_20 -n 10  --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 
ts-node ./js/packages/cli/src/candy-machine-cli.ts verify --env mainnet-beta  --keypair ~/.config/solana/mainnet.json
.................................................................
4.Change OnChain to false
.................................................................
arweave-nft assets_11_20  --force-upload  --assets-from-json  -e mainnet-beta -k ~/.config/arweave/arweave-key-tZUgSIBcxE6O69uIRx4WU3G7-qmP25Tu_JevmjU7Vxw.json
.................................................................
5.Change OnChain to true
.................................................................
 ts-node  ./js/packages/cli/src/candy-machine-cli.ts create_candy_machine --env mainnet-beta  --keypair ~/.config/solana/mainnet.json --price 0.000001 --sol-treasury-account GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz 
.................................................................
wallet public key: GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
create_candy_machine finished. candy machine pubkey: CWyeTJ6S8X9qKT4oXEffsgqEceb7NpzkkUDYhZdLBruF
.................................................................
 ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env mainnet-beta  --keypair ~/.config/solana/mainnet.json

****************************************************************


ts-node ./js/packages/cli/src/candy-machine-cli.ts upload ./assets1 -n 1  --env devnet  --keypair ~/.config/solana/id.json 
ts-node ./js/packages/cli/src/candy-machine-cli.ts verify  --env devnet --keypair ~/.config/solana/id.json 


ts-node ./js/packages/cli/src/candy-machine-cli.ts upload ./assets1 -n 1  --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 


ts-node ./js/packages/cli/src/candy-machine-cli.ts upload assets10 -n 11  --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 

ts-node ./js/packages/cli/src/candy-machine-cli.ts upload assets  -n 67  --env mainnet-beta  --keypair ~/.config/solana/mainnet.json 


arweave-nft  --force-upload  --assets-from-json  -e mainnet-beta -k ~/.config/arweave/arweave-key-tZUgSIBcxE6O69uIRx4WU3G7-qmP25Tu_JevmjU7Vxw.json assets11_20

ts-node ./js/packages/cli/src/candy-machine-cli.ts verify --env mainnet-beta  --keypair ~/.config/solana/mainnet.json

ts-node  ./js/packages/cli/src/candy-machine-cli.ts create_candy_machine --env mainnet-beta  --keypair ~/.config/solana/mainnet.json --price 0.00001 --sol-treasury-account GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz

create_candy_machine finished. candy machine pubkey: disSJ4pzLzdRsDiS8sEoDnfMkhJ11jBi9HsYsdXCiuk



arweave-nft -e devnet -k ~/.config/arweave/arweave-key-tZUgSIBcxE6O69uIRx4WU3G7-qmP25Tu_JevmjU7Vxw.json ./assets10





ts-node  ./js/packages/cli/src/candy-machine-cli.ts create_candy_machine --env devnet --keypair ~/.config/solana/id.json --price 1 --sol-treasury-account 3mgEMZZ4jYCCc9N461PdDD423BEHWL7yCmwwKSozowE8  



ts-node ./js/packages/cli/src/candy-machine-cli.ts update_candy_machine --env devnet --keypair ~/.config/solana/id.json --price 0.001 --date "22 Sep 2021 00:12:00 GMT"

ts-node ./js/packages/cli/src/candy-machine-cli.ts update_candy_machine --env mainnet-beta  --keypair ~/.config/solana/mainnet.json --price 0.00001 --date "22 Sep 2021 00:12:00 GMT"

create_candy_machine finished. candy machine pubkey: C9d3mN3wC62o7zmBbdjkamYPDZzXfwXQW8K7FgvtM2am


mint with: 


ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env devnet --keypair ~/.config/solana/id.json 

ts-node  ./js/packages/cli/src/candy-machine-cli.ts  mint_one_token --env mainnet-beta  --keypair ~/.config/solana/mainnet.json



The only configuration needed is the one save in .env file:

REACT_APP_CANDY_MACHINE_CONFIG=ChmBgXCRo42gVuk67tE2x7hW4Nd9f1sZ1W6rWFoFtzj6
REACT_APP_CANDY_MACHINE_ID=C9d3mN3wC62o7zmBbdjkamYPDZzXfwXQW8K7FgvtM2am
REACT_APP_TREASURY_ADDRESS=3mgEMZZ4jYCCc9N461PdDD423BEHWL7yCmwwKSozowE8
REACT_APP_CANDY_START_DATE=1632262320 
REACT_APP_SOLANA_NETWORK=devnet
REACT_APP_SOLANA_RPC_HOST=https://explorer-api.devnet.solana.com
REACT_APP_SOLANA_RPC_HOST=https://explorer-api.mainnet-beta.solana.com

In details:
REACT_APP_CANDY_MACHINE_CONFIG is the configuration fetched from the .cache/devnet-temp json file, after the upload command
REACT_APP_CANDY_MACHINE_ID is the candy machine id printed in the terminal after the command crate-candy-machine
REACT_APP_TREASURY_ADDRESS is where the the minting payments goes, of course this needs to be the same address used when creating the candy machine
REACT_APP_CANDY_START_DATE is the start date set with the command  set_start_date UNIX Time Stamp

REACT_APP_SOLANA_NETWORK and REACT_APP_SOLANA_RPC_HOST are the two network’s references used, change them once ready to go in production on the mainnet


DEV
wallet public key: 3mgEMZZ4jYCCc9N461PdDD423BEHWL7yCmwwKSozowE8
create_candy_machine finished. 
candy machine pubkey: 6RcERbZrY98SbMK3cMxTUn3JbrYDMx8UDNXB5U5rN4Zu

MAINNET
wallet public key: GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
create_candy_machine finished. candy machine pubkey: FJKtciMZbVeF77wpr9zXRQFTkoowgyYyiDw9ooSDzkEg


Beginning the upload for 1 (png+json) pairs
started at: 1637072674575
wallet public key: GCAUb5oqe3yrzLqNSyh5yP38FPb97yLvQ5QnLGaLhBHz
Processing file: 0
initializing config
initialized config for a candy machine with publickey: HfGAPYTMvXxFQ1biNii6H7cSEemRGL93fJFzrKLEhXN9
lamport cost to store assets1\0.png: 14282.049138810551
Writing indices 0-0
Done. Successful = true.