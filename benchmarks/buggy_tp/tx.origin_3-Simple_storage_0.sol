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
function  transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public  payable{
  require(tx.origin == owner_txorigin27);
  to.call.value(amount);
}
}