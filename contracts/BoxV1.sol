// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract BoxV1 is Initializable {
  uint public width;
  uint public length;

  function initialize(uint _length, uint _width) public initializer {
    length = _length;
    width = _width;
  }
  
  function area() public view returns(uint) {
    return length * width;
  }
}

// this is a proxy contract
// 0xd6DB8ECeCe29C674945d91D99aD96a10dD56335C --network sepolia
// Verifying implementation: 0x36ea8E6d5792565fc24d7A214EDad8663e06901F
// Successfully submitted source code for contract
// contracts/BoxV1.sol:BoxV1 at 0x36ea8E6d5792565fc24d7A214EDad8663e06901F
// for verification on the block explorer. Waiting for verification result...

// Successfully verified contract BoxV1 on the block explorer.
// https://sepolia.etherscan.io/address/0x36ea8E6d5792565fc24d7A214EDad8663e06901F#code
// Verifying proxy: 0xd6DB8ECeCe29C674945d91D99aD96a10dD56335C
// Contract at 0xd6DB8ECeCe29C674945d91D99aD96a10dD56335C already verified.
// Linking proxy 0xd6DB8ECeCe29C674945d91D99aD96a10dD56335C with implementation
// Successfully linked proxy to implementation.
// Verifying proxy admin: 0x54570cc2Df6f7462fed15d6E5006b42ea1c8fEaA
// Contract at 0x54570cc2Df6f7462fed15d6E5006b42ea1c8fEaA already verified.


