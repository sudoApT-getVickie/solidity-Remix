// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MERITPOINT {
        
        string  public studentName;//for the name of the student example name = "David"
        address public Instructoraddress; //for the Instructor as an address      
        uint public meritPoints = 0;
        
        constructor(string memory _name) {
            studentName = _name;
            Instructoraddress = msg.sender;
        }

        function addPoint(uint _points) public {
            require(msg.sender == Instructoraddress,"Only Instructor Should add MeritPoints");
            meritPoints += _points; //my function to add merit points
        }
        function removePoint(uint _points) public {
             require(msg.sender == Instructoraddress,"Only Instructor Should remove MeritPoints");
           
             require(meritPoints >=_points,"Student doesn't have enough Merit Points");
              // the require statemnt that ensures that the student's merit points never drop below zero 
               meritPoints -= _points; //my function to reduce merit points
    }
        function checkGrade() public view returns (string memory) {
        if (meritPoints >= 5) {
            return "Pass";
        } else {
            return "Fail";
        }
        //a view function that reads students meritpoints and returns the status either pass or fail 
        }
}
        
