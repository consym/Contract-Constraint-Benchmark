contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }

    function set(uint x) public {
        storedData_added = x;
    }
function  sendto_txorigin17(address receiver, uint amount,address owner_txorigin17) public  payable{
require( storedData != 100); // Opposite constraint statement, type 2
	require (tx.origin == owner_txorigin17);
	receiver.transfer(amount);
}

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}