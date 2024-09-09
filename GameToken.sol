// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";


contract GameT is ERC20{

    address admin;

    constructor()ERC20('GameT','GT'){
        _mint(msg.sender, 100000000000000000000);
        admin = msg.sender;
        
    }
    modifier onlyAdmin(){
        require(msg.sender == admin,"Access Denied!");
        _;
    }

    function safeMint(address to, uint value) public onlyAdmin {
        _mint(to, value);
    }
}
