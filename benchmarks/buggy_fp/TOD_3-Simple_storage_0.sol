contract SimpleStorage {
    uint public storedData;
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
address winner_TOD27;
function  play_TOD27(bytes32 guess) public payable{
require( storedData != 100); // Opposite constraint statement, type 2
 
       if (keccak256(abi.encode(guess)) == keccak256(abi.encode('hello'))) {

            winner_TOD27 = msg.sender;
        }
    }

function  getReward_TOD27()  public  payable{
     
       winner_TOD27.transfer(msg.value);
    }
}