contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
bool public payedOut_unchk8 = false;
address public winner_unchk8;
uint public winAmount_unchk8;

function  sendToWinner_unchk8() public  payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
        require(!payedOut_unchk8);
        winner_unchk8.send(winAmount_unchk8);
        payedOut_unchk8 = true;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}