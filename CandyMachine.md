$ solana --version
$ cd js
$ yarn install
$ yarn bootstrap
$ yarn start

$ solana balance
$ solana config get

Config File: C:\Users\krumh\.config\solana\cli\config.yml
RPC URL: https://api.devnet.solana.com
WebSocket URL: wss://api.devnet.solana.com/ (computed)
Keypair Path: C:\Users\krumh\.config\solana\id.json 

ts-node  ./js/packages/cli/src/candy-machine-cli.ts  help

ts-node ./js/packages/cli/src/candy-machine-cli.ts upload ./assets1 -n 1  --env devnet  --keypair ~/.config/solana/id.json 
ts-node ./js/packages/cli/src/candy-machine-cli.ts verify  --env devnet --keypair ~/.config/solana/id.json 

ts-node  ./js/packages/cli/src/candy-machine-cli.ts create_candy_machine --env devnet --keypair ~/.config/solana/id.json --price 1 --sol-treasury-account 3mgEMZZ4jYCCc9N461PdDD423BEHWL7yCmwwKSozowE8  

ts-node ./js/packages/cli/src/candy-machine-cli.ts update_candy_machine --env devnet --keypair ~/.config/solana/id.json --price 1 --date "22 Sep 2021 00:12:00 GMT"

ts-node  ./js/packages/cli/src/candy-machine-cli.ts update_candy_machine --keypair ~/.config/solana/id.json --date '29 Oct 2022 00:00:00 GMT' --price 1

create_candy_machine finished. candy machine pubkey: C9d3mN3wC62o7zmBbdjkamYPDZzXfwXQW8K7FgvtM2am


mint with: 


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