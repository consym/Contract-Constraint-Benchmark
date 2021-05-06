contract Value {
    uint256 public tokenBalance;
    
    constructor() public {
        tokenBalance = 0;
    }
    
    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }
address winner_TOD17;
function  play_TOD17(bytes32 guess) public payable{
 
       if (keccak256(abi.encode(guess)) == keccak256(abi.encode('hello'))) {

            winner_TOD17 = msg.sender;
        }
    }

function  getReward_TOD17()  public  payable{
     
       winner_TOD17.transfer(msg.value);
    } 
    
    function getTokenBalance() view public returns (uint256) {
        return tokenBalance;
    }
}