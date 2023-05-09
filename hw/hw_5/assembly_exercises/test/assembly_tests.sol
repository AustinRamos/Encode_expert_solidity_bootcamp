// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/1.sol";
import "../src/2.sol";
import "../src/3.sol";
import "../src/4.sol";
 

contract Assembly is Test {
    Intro public intro;
    Add public two;
    SubOverflow public three;
    Scope public four;

    function setUp() public {
        intro = new Intro();
        two = new Add();
        three = new SubOverflow();
        four = new Scope();
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

    function test4() public {
        four.increment(5);
        uint256 result = four.count();
        assertEq(result, 15);
    }

    // function testSetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
