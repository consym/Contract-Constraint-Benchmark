contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }
bool claimed_TOD8 = false;
address owner_TOD8;
uint256 reward_TOD8;
function  setReward_TOD8() public    payable{
        require (!claimed_TOD8);

        require(msg.sender == owner_TOD8);
        owner_TOD8.transfer(reward_TOD8);
        reward_TOD8 = msg.value;
    }

    function  claimReward_TOD8(uint256 submission) public  payable{
        require (!claimed_TOD8);
        require(submission < 10);

        msg.sender.transfer(reward_TOD8);
        claimed_TOD8 = true;
    }

    function set(uint x) public {
        storedData_added = x;
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}