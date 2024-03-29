// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Proxy {
    function deploy(
        bytes memory _code
    ) external payable returns (address addr) {
        assembly {
            addr := create(callvalue(), add(_code, 0x20), mload(_code))
        }
        require(addr != address(0), "deploy failed");
        keccak256(_code);
    }
}
