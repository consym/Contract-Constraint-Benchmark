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
uint vundflw =0;
function  bug_intou27() public payable{
    vundflw = vundflw -10;   // underflow bug
}
}