contract Value {
  function  transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public  payable{
  require(tx.origin == owner_txorigin19);
  to.call.value(amount);
}
  uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}