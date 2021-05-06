contract Donation {
    address owner;
    event fundMoved(address _to, uint _amount);
    modifier onlyowner { if (msg.sender == owner) _; }
    address[] _giver;
  mapping(address => uint) balances_intou34;

function  transfer_intou34(address _to, uint _value) public payable returns (bool)  {
    require(balances_intou34[msg.sender] - _value >= 0);  //bug
    balances_intou34[msg.sender] -= _value;  //bug
    balances_intou34[_to] += _value;  //bug
    return true;
  }
  uint[] _values;

    constructor() public {
        owner = msg.sender;
    }

    function donate() payable  public {
        addGiver(msg.value);
    }

    function moveFund(address  _to, uint _amount) onlyowner payable public {
        uint balance = address(this).balance;
        uint amount = _amount;
        if (_amount <= balance) {
            if (_to.send(balance)) {
                emit fundMoved(_to, _amount);    
            } else {
               revert();
            }
        } else {
            revert();
        }
    }

    function addGiver(uint _amount) internal {
        _giver.push(msg.sender);
        _values.push(_amount);
    }
}