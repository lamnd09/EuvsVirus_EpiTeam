pragma solidity >=0.4.22 < 0.7.0;

contract hireSC {
    address public elder;
    uint public last_completed_hiresc;
    
    modifier restricted(){
        if(msg.sender == elder) _;
    }

    constructor() public {
        elder = msg.sender;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_hiresc = completed;
    }

}