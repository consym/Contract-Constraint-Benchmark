contract SimpleStorage {
    uint public storedData;
  function  bug_unchk19() public payable{
require( storedData != 100); // Opposite constraint statement, type 2
address addr_unchk19;
if (!addr_unchk19.send (10 ether) || 1==1)
	{revert();}
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