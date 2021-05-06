contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }
mapping(address => uint) public lockTime_intou17;

function  increaseLockTime_intou17(uint _secondsToIncrease) public  payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
        lockTime_intou17[msg.sender] += _secondsToIncrease;  //overflow
    }
function  withdraw_intou17() public  payable{
        require(now > lockTime_intou17[msg.sender]);    
        uint transferValue_intou17 = 10;           
        msg.sender.transfer(transferValue_intou17);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}