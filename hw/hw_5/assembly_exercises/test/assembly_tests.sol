// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/1.sol";
import "../src/2.sol";
import "../src/3.sol";

contract Assembly is Test {
    Intro public intro;
    Add public two;
    SubOverflow public three;

    function setUp() public {
        intro = new Intro();
        two = new Add();
        three = new SubOverflow();
        
    }

    function test1() public {
       uint256 result = intro.intro();
      
        assertEq(result, 420);
    }

     function test2() public {
       uint256 result = two.addAssembly(5,5);
   
        assertEq(result, 10);
    }

    function test3() public {
       uint256 result = three.subtract(5,8);

   
        assertEq(result, 0);
        uint256 result2 = three.subtract(10,5);

   
        assertEq(result2, 5);
    }

    // function testSetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
