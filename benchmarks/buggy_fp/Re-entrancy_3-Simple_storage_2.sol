contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }
mapping(address => uint) balances_re_ent8;
    function  withdraw_balances_re_ent8 () public  payable{
require( storedData != 100); // Opposite constraint statement, type 2
       (bool success,) = msg.sender.call.value(balances_re_ent8[msg.sender ])("");
       if (success)
          balances_re_ent8[msg.sender] = 0;
      }

    function set(uint x) public {
        storedData_added = x;
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}