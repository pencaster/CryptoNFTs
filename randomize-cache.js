const fs = require("fs");

function shuffle(array){
	let currentIndex = array.length, randomIndex;
	while(currentIndex != 0){
		randomIndex = Math.floor(Math.random() * currentIndex);
		currentIndex--;
		[array[currentIndex], array[randomIndex]] = [array[randomIndex], array[currentIndex]];
	}

	return array;
}

async function main(args){
	let filename = args[1] || "mainnet-beta-temp";
	console.log(`Randomizing cache: ${filename}`);
	
	let numberAlreadyMinted = args[2] || 0;
	if(numberAlreadyMinted > 0)
		console.log(`Skipping the first ${numberAlreadyMinted} entries`);
	
	const cache = JSON.parse(await fs.promises.readFile(filename));
	
	if(!cache.items){
		console.error("No items array found");
		return 1;
	}
	
	console.log(`Items in cache before shuffle: ${Object.keys(cache.items).length}`)
	let values = Object.values(cache.items);
	values.forEach(e => e.onChain = false);
	
	let minted = values.slice(0, numberAlreadyMinted);
	let unMinted = values.slice(numberAlreadyMinted);
	shuffle(unMinted);
	values = minted.concat(unMinted);
	
	let keys = Object.keys(cache.items);
	for(let i = 0; i < values.length; i++)
		cache.items[keys[i]] = values[i];
	
	await fs.promises.writeFile(filename + ".random", JSON.stringify(cache));
	console.log(`Items in cache after shuffle: ${Object.keys(cache.items).length}`)
}

if(require.main)
	main(process.argv.slice(1)).catch(console.error);