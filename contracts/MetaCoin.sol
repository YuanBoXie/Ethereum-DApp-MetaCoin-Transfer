// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

import "./ConvertLib.sol";

// 简化的加密货币合约Demo:与标准不兼容，不能与其他合约通信
// To build a standards-compliant token, see: https://github.com/ConsenSys/Tokens.

contract MetaCoin {
    mapping (address => uint) balances;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    constructor() public {
        balances[msg.sender] = 10000; // 创建者有10000个meta
    }

    function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
        if(balances[msg.sender] < amount) return false;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Transfer(msg.sender, receiver, amount);
        return true;
    }

    function getBalanceInEth(address addr) public view returns(uint) {
        return ConvertLib.convert(getBalance(addr),2);
    }

    function getBalance(address addr) public view returns(uint) {
        return balances[addr];
    }
}
