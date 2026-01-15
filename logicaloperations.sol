// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract Logicaloperations{
        uint public x = 5;
        uint public y = 10;
        
        
        bool public isEqual = (x==y); //should be false
        bool public isBothPositive = (x>0&&y>0); //should be true 

        bool public isEitherPositive = (x>0||y>0); //should be true
        bool public isNotEqual = (x!=y); //should be true

    }