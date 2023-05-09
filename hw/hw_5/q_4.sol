//write yul to 
//add 0x07 to 0x08
//store the result at next free memory pointer
//3) write it in opcodes.

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract yul {

constructor(){

}

function add(uint256 a, uint b) public returns (uint){
    assembly{
    let res:=add(a,b)
    mstore(0x80,res)
    return(0x80,32)
    }
}
}