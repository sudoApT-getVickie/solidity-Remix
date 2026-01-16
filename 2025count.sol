// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateVariableChange{
    uint count = 2025;



        function setCount(uint newCount) public {
         count=newCount*42;

}

        function getCount()  public view returns (uint) {
        return count;

}


}