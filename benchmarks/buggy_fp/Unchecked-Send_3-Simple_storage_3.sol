contract SimpleStorage {
    uint public storedData;
  function  bug_unchk_send19()  public  payable{
require( storedData != 100); // Opposite constraint statement, type 2
      msg.sender.transfer(1 ether);}
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