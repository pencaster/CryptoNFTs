"C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsamd64_x86.bat"
cd .\js
yarn install
yarn bootstrap
yarn build

cd packages/web
yarn deploy


$ git checkout -b metaplex-foundation-master-30-10-21  master
$ git pull https://github.com/metaplex-foundation/metaplex.git master
$ git checkout master
$ git merge --no-ff metaplex-foundation-master-30-10-21
