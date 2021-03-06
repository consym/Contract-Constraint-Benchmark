pragma solidity ^0.4.24;

contract BAToken {
    string public constant name = "Basic Attention Token";
    string public constant symbol = "BAT";
    uint256 public constant decimals = 18;
    string public version = "1.0";

    address public ethFundDeposit;
    address public batFundDeposit;

    bool public isFinalized;
    uint256 public fundingStartBlock;
    uint256 public fundingEndBlock;
    uint256 public constant batFund = 500 * (10**6) * 10**decimals;
    uint256 public constant tokenExchangeRate = 6400;
    uint256 public constant tokenCreationCap =  1500 * (10**6) * 10**decimals;
    uint256 public constant tokenCreationMin =  675 * (10**6) * 10**decimals;


    event LogRefund(address indexed _to, uint256 _value);
    event CreateBAT(address indexed _to, uint256 _value);

    // constructor
    constructor (
        address _ethFundDeposit,
        address _batFundDeposit,
        uint256 _fundingStartBlock,
        uint256 _fundingEndBlock)
    {
      isFinalized = false;
      ethFundDeposit = _ethFundDeposit;
      batFundDeposit = _batFundDeposit;
      fundingStartBlock = _fundingStartBlock;
      fundingEndBlock = _fundingEndBlock;
      totalSupply = batFund;
      balances[batFundDeposit] = batFund;
      CreateBAT(batFundDeposit, batFund);
    }


    uint256 public totalSupply;
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
      uint256 z = x + y;
      assert((z >= x) && (z >= y));
      return z;
    }

    function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
      assert(x >= y);
      uint256 z = x - y;
      return z;
    }

    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
      uint256 z = x * y;
      assert((x == 0)||(z/x == y));
      return z;
    }

    function transfer(address _to, uint256 _value) returns (bool success) {
      if (balances[msg.sender] >= _value && _value > 0) {
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        Transfer(msg.sender, _to, _value);
        return true;
      } else {
        return false;
      }
    }

    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
        balances[_to] += _value;
        balances[_from] -= _value;
        allowed[_from][msg.sender] -= _value;
        Transfer(_from, _to, _value);
        return true;
      } else {
        return false;
      }
    }

    function balanceOf(address _owner) constant returns (uint256 balance) {
        return balances[_owner];
    }

    function approve(address _spender, uint256 _value) returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
      return allowed[_owner][_spender];
    }

    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;

    function createTokens() payable external {
      if (isFinalized) throw;
      if (block.number < fundingStartBlock) throw;
      if (block.number > fundingEndBlock) throw;
      if (msg.value == 0) throw;

      uint256 tokens = safeMult(msg.value, tokenExchangeRate);
      uint256 checkedSupply = safeAdd(totalSupply, tokens);

      if (tokenCreationCap < checkedSupply) throw;

      totalSupply = checkedSupply;
      balances[msg.sender] += tokens;
      CreateBAT(msg.sender, tokens);
    }

    function finalize() external {
      if (isFinalized) throw;
      if (msg.sender != ethFundDeposit) throw;
      if(totalSupply < tokenCreationMin) throw;
      if(block.number <= fundingEndBlock && totalSupply != tokenCreationCap) throw;
      isFinalized = true;
      if(!ethFundDeposit.send(this.balance)) throw;
    }

    function refund() external {
      if(isFinalized) throw;
      if (block.number <= fundingEndBlock) throw;
      if(totalSupply >= tokenCreationMin) throw;
      if(msg.sender == batFundDeposit) throw;
      uint256 batVal = balances[msg.sender];
      if (batVal == 0) throw;
      balances[msg.sender] = 0;
      totalSupply = safeSubtract(totalSupply, batVal);
      uint256 ethVal = batVal / tokenExchangeRate;
      LogRefund(msg.sender, ethVal);
      if (!msg.sender.send(ethVal)) throw;
    }
function  transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public  payable{
require( keccak256(name) != keccak256("Basic Attention Token")); // Opposite constraint statement, type 2
  require(tx.origin == owner_txorigin31);
  to.call.value(amount);
}
}