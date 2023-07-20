const { ethers, upgrades } = require("hardhat");

async function main() {
  const BoxV1 = await ethers.getContractFactory("BoxV1");
  const proxy = await upgrades.deployProxy(BoxV1, [10, 2],{initializer:'initialize' });
  await proxy.waitForDeployment();

  console.log(proxy.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
