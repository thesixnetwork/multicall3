// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import { Multicall3 } from "../src/Multicall3.sol" ;

contract MulticallScript is Script {

    function setUp() public  {
    }

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new Multicall3();
        vm.stopBroadcast();
    }

}
