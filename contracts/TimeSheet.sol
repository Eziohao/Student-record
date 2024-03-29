pragma solidity ^0.5.0;

contract TimeSheet{
    uint public countCheckIn=0;
    uint public countCheckOut=0;

    struct CheckInStudent{
        uint id;
        string firstName;
        string lastName;
        bool isCheckIn;
        string time;
    }
    struct CheckOutStudent{
        uint id;
        string firstName;
        string lastName;
        bool isCheckOut;
        string time;
    }
    mapping(uint=>CheckInStudent) public checkInLists;
    mapping(uint=>CheckOutStudent) public checkOutLists;

    function checkIn(uint _id,string memory _time,string memory _firstName, string memory _lastName){
        countCheckIn+=1;
        checkInLists[countCheckIn]=CheckInStudent(_id,_firstName,_lastName,true,_time);
    }
     function checkOut(uint _id,string memory _time,string memory _firstName, string memory _lastName){
        countCheckOut+=1;
        checkOutLists[countCheckOut]=CheckOutStudent(_id,_firstName,_lastName,true,_time);
    }

}