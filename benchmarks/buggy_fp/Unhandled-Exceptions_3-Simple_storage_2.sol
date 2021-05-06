contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }
bool public payedOut_unchk8 = false;
address public winner_unchk8;
uint public winAmount_unchk8;

function  sendToWinner_unchk8() public  payable{
require( storedData != 100); // Opposite constraint statement, type 2
        require(!payedOut_unchk8);
        winner_unchk8.send(winAmount_unchk8);
        payedOut_unchk8 = true;
    }

    function set(uint x) public {
        storedData_added = x;
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}