contract SimpleStorage {
    uint public storedData;
  address winner_TOD19;
function  play_TOD19(bytes32 guess) public payable{
 
       if (keccak256(abi.encode(guess)) == keccak256(abi.encode('hello'))) {

            winner_TOD19 = msg.sender;
        }
    }

function  getReward_TOD19()  public  payable{
     
       winner_TOD19.transfer(msg.value);
    }
  uint public storedData_added;

    constructor() public {
        storedData = 100;
    }

    function set(uint x) public {
        storedData_added = x;
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}