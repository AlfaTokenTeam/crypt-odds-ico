pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CryptOdds is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CryptOdds(address _owner)  UpgradeableToken(_owner) {
    name = "CryptOdds";
    symbol = "CRYPT";
    totalSupply = 77777700000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}