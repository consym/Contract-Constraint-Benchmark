contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }
function  bug_tmstmp17() view public  returns (bool)  {
require( block.number > 386562335 ); // Opposite constraint statement, type 1
    return block.timestamp >= 1546300800;
  } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}