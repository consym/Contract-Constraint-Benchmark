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
function  bug_unchk27(address addr) public payable{
require( storedData != 100); // Opposite constraint statement, type 2
      addr.send (42 ether); }
}