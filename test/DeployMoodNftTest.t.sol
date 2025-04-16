// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {DeployMoodNft} from "../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft public deployer;
    
    function setUp() public {
        deployer = new DeployMoodNft();
    }

    // function testConvertSvgToURI() public {
    //     string memory expectedUri = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPCEtLSBGYWNlIC0tPgogIDxjaXJjbGUgY3g9IjEwMCIgY3k9IjEwMCIgcj0iOTAiIGZpbGw9InllbGxvdyIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSI4Ii8+CgogIDwhLS0gRXllcyAtLT4KICA8Y2lyY2xlIGN4PSI2NSIgY3k9Ijc1IiByPSIxMCIgZmlsbD0iYmxhY2siLz4KICA8Y2lyY2xlIGN4PSIxMzUiIGN5PSI3NSIgcj0iMTAiIGZpbGw9ImJsYWNrIi8+CgogIDwhLS0gU2FkIE1vdXRoIC0tPgogIDxwYXRoIGQ9Ik02MCAxNDAgUTEwMCAxMDAgMTQwIDE0MCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSI4IiBmaWxsPSJ0cmFuc3BhcmVudCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=";
    //     string memory svg = '';
    //     // WILL BE EQUAL DEFINITELY
    //     // deployer.svgToImageURI()
    // }
} 