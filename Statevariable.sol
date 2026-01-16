// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Statevariablechange{
        uint count = 0 ;//state variable

    
    function setCount(uint newcount) public {
        count = newcount;

    }
    
    function getCount() public view returns(uint)
    {
        return count;
    }
    

    function increment() public {
        uint temp = count +1;
        count = temp;
    }
    
    function decrement() public{
        uint temp=count-1;
        count=temp;

    }

}