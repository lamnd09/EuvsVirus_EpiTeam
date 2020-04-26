pragma solidity >=0.4.22<0.7.0;

contract dealSC{
    address[16] public dealers;

    //Like a candidate 
    function deal(uint candidateID) public returns (uint) {
        require(candidateID >=0 && candidateID <=100);

        dealers[candidateID] = msg.sender;
        
        return candidateID;
    }

}