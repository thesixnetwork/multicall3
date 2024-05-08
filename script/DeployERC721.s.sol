// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";

//import {MockERC721} from "../src/Mock721.sol";

contract MyScript is Script {
    address ownerAddress;
    uint64 currentNonce;

    function setUp() public {
        ownerAddress = vm.envAddress("OWNER");
        currentNonce = vm.getNonce(ownerAddress);
    }

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        //new MockERC721( "NFT1", "NFT1", "baseUri");
        //nonceUp();

        //new MockERC721( "NFT2", "NFT2", "baseUri");
        //nonceUp();

        vm.stopBroadcast();
    }

    function nonceUp() public {
        vm.setNonce(ownerAddress, currentNonce + uint64(1));
        currentNonce++;
    }
}
