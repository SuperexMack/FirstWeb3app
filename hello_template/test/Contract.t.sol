// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Contract.sol";

contract TestContract is Test {
    Mathematics c;

    function setUp() public {
        c = new Mathematics();
    }


    function testchecker() public{
      c.adder(100);
      assertEq(c.first(), uint256(100) , "ok");
    }

    function testCheckValue()public{
      c.adder(200);
      uint256 result = c.finalValue();
      assertEq(result,200,"The final value is 200");
    }
}
