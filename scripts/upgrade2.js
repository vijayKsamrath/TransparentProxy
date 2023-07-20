const { ethers, upgrades } = require("hardhat");

// TO DO: Place the address of your proxy here!
const proxyAddress = "0xd6DB8ECeCe29C674945d91D99aD96a10dD56335C";

async function main() {
  const BoxV3 = await ethers.getContractFactory("BoxV3");
  const upgraded2 = await upgrades.upgradeProxy(proxyAddress, BoxV3);
  console.log((await upgraded2.area()).toString());
  console.log((await upgraded2.perimeter()).toString());
  console.log((await upgraded2.add()).toString());
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });