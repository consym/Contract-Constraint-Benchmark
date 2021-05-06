contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }
uint vundflw1=10;
function  bug_intou8(uint p_intou8) public payable{
    vundflw1 = vundflw1 + p_intou8;   // overflow bug
}

    function set(uint x) public {
        storedData_added = x;
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}