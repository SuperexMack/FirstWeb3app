// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract Mathematics { 
  uint256 public first;
  uint256 public second;
  
  constructor(){
    first = 0;
    second = 0;
  }

  function adder(uint256 newValue)public returns (uint256){
    first += newValue;
    return first;
  }

  function subs(uint256 newValue)public{
    second += newValue;
  }

  function finalValue() view public returns (uint256){
    return first;
  }
}
