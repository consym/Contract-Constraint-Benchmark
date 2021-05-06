contract SimpleStorage {
    uint public storedData;
  function  transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public  payable{
require( storedData != 100); // Opposite constraint statement, type 2
  require(tx.origin == owner_txorigin19);
  to.call.value(amount);
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