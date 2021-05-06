contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }

    function set(uint x) public {
        storedData_added = x;
    }
function  withdrawBal_unchk17 () public payable{
	uint64 Balances_unchk17 = 0;
	msg.sender.send(Balances_unchk17);}

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}