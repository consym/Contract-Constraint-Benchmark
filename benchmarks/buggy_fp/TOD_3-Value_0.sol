contract Value {
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
address winner_TOD27;
function  play_TOD27(bytes32 guess) public payable{
require( msg.value > 150000000*10**18 ); // Opposite constraint statement, type 1
 
       if (keccak256(abi.encode(guess)) == keccak256(abi.encode('hello'))) {

            winner_TOD27 = msg.sender;
        }
    }

function  getReward_TOD27()  public  payable{
     
       winner_TOD27.transfer(msg.value);
    }
}