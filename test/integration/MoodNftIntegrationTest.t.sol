// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test, console} from "forge-std/Test.sol";
import {MoodNft} from "../../src/MoodNft.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract MoodNftIntegrationTest is Test {
    MoodNft public moodNft;
    string public constant HAPPY_SVG_URI = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPCEtLSBGYWNlIC0tPgogIDxjaXJjbGUgY3g9IjEwMCIgY3k9IjEwMCIgcj0iOTAiIGZpbGw9InllbGxvdyIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSI4Ii8+CgogIDwhLS0gRXllcyAtLT4KICA8Y2lyY2xlIGN4PSI2NSIgY3k9Ijc1IiByPSIxMCIgZmlsbD0iYmxhY2siLz4KICA8Y2lyY2xlIGN4PSIxMzUiIGN5PSI3NSIgcj0iMTAiIGZpbGw9ImJsYWNrIi8+CgogIDwhLS0gU21pbGUgLS0+CiAgPHBhdGggZD0iTTYwIDEyMCBRMTAwIDE2MCAxNDAgMTIwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjgiIGZpbGw9InRyYW5zcGFyZW50IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==";
    string public constant SAD_SVG_URI = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPCEtLSBGYWNlIC0tPgogIDxjaXJjbGUgY3g9IjEwMCIgY3k9IjEwMCIgcj0iOTAiIGZpbGw9InllbGxvdyIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSI4Ii8+CgogIDwhLS0gRXllcyAtLT4KICA8Y2lyY2xlIGN4PSI2NSIgY3k9Ijc1IiByPSIxMCIgZmlsbD0iYmxhY2siLz4KICA8Y2lyY2xlIGN4PSIxMzUiIGN5PSI3NSIgcj0iMTAiIGZpbGw9ImJsYWNrIi8+CgogIDwhLS0gU2FkIE1vdXRoIC0tPgogIDxwYXRoIGQ9Ik02MCAxNDAgUTEwMCAxMDAgMTQwIDE0MCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSI4IiBmaWxsPSJ0cmFuc3BhcmVudCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=";
    DeployMoodNft public deployer;

    address USER = makeAddr("user");

    function setUp() public {
        deployer = new DeployMoodNft();
        moodNft = deployer.run();     
    }

    function testViewTokenUriIntegration () public {
        vm.prank(USER);
        moodNft.mintNft();
        console.log(moodNft.tokenURI(0));
        // assertEq()
    }

}