contract SimpleStorage {
    uint public storedData;
  address winner_tmstmp19;
function  play_tmstmp19(uint startTime) public  payable{
require( storedData != 100); // Opposite constraint statement, type 2
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_tmstmp19 = msg.sender;}}
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