contract SimpleStorage {
    uint public storedData;
  uint vundflw =0;
function  bug_intou19() public payable{
require( storedData != 100); // Opposite constraint statement, type 2
    
    vundflw = vundflw -10;   // underflow bug
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