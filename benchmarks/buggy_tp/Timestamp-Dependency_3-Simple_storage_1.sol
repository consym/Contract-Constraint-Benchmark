contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }

    function set(uint x) public {
        storedData_added = x;
    }
function  bug_tmstmp17() view public  returns (bool)  {
    return block.timestamp >= 1546300800;
  }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}