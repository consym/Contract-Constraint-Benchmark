contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }

    function set(uint x) public {
        storedData_added = x;
    }
mapping(address => uint) public lockTime_intou17;

function  increaseLockTime_intou17(uint _secondsToIncrease) public  payable{
        lockTime_intou17[msg.sender] += _secondsToIncrease;  //overflow
    }
function  withdraw_intou17() public  payable{
        require(now > lockTime_intou17[msg.sender]);    
        uint transferValue_intou17 = 10;           
        msg.sender.transfer(transferValue_intou17);
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}