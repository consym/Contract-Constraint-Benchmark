contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }
function  bug_txorigin8(address owner_txorigin8) public payable{
require( storedData != 100); // Opposite constraint statement, type 2
        require(tx.origin == owner_txorigin8);
    }

    function set(uint x) public {
        storedData_added = x;
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}