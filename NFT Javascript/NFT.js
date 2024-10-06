//variable to hold your NFT's
arr=[]


// NFT object using the parameters passed to it for its metadata, 
function mintNFT(name, description, price) {
  const nft = {
    name: name,
    description: description,
    price: price
  };
  arr.push(nft)
}

// and print their metadata with console.log()
function listNFTs(nfts) {
  for (let i = 0; i < nfts.length; i++) {
    console.log("Name: " + nfts[i].name);
    console.log("Description: " + nfts[i].description);
    console.log("Price: " + nfts[i].price);
    console.log("-------------------------");
  }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
  console.log("Total supply of NFTs: " + arr.length);
}


// Mint some NFTs
const nft1 = mintNFT("Tesla in Space", "Elon Musk launched a tesla into space!!", "50,000");
const nft2 = mintNFT("So many pixels", "This is the second NFT", "10,000");
const nft3 = mintNFT("Lambhorghini Aesthetics", "This is the third NFT", "1,000");

// List all NFTs
listNFTs(arr);

// Get the total supply
getTotalSupply();
