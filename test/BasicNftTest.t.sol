// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("USER");
    uint256 public AMOUNT = 1 ether;
    string public constant KITTY = "https://ipfs.io/ipfs/bafkreiaezrojsh4fae54mnqncydy7swtdx7j3sgacr6ow5kzhjakl3chqq";
    
    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testName() public view {
        string memory expectedName = "Meow";
        string memory actualName = basicNft.name();
        assertEq(actualName, expectedName);
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        basicNft.mintNft(KITTY);

        assert(basicNft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(basicNft.tokenURI(0))) == keccak256(abi.encodePacked(KITTY)));    
    }

}