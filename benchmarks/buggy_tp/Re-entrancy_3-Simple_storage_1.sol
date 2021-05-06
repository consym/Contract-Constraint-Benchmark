contract SimpleStorage {
    uint public storedData;
    uint public storedData_added;

    constructor() public {
        storedData = 100;
    }

    function set(uint x) public {
        storedData_added = x;
    }
mapping(address => uint) balances_re_ent17;
function  withdrawFunds_re_ent17 (uint256 _weiToWithdraw) public  payable{
        require(balances_re_ent17[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  //bug
        balances_re_ent17[msg.sender] -= _weiToWithdraw;
    }

    function get() public view returns (uint retVal) {
        return storedData_added;
    }
}