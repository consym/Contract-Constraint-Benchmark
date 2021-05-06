contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }
mapping(address => uint) balances_re_ent17;
function  withdrawFunds_re_ent17 (uint256 _weiToWithdraw) public  payable{
        require(balances_re_ent17[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  //bug
        balances_re_ent17[msg.sender] -= _weiToWithdraw;
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}