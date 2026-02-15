// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Shepard Protocol Governance Token ($SHEPARD)
/// @notice ERC-20 Fungible Token on Metal L2 (Chain ID 1750)
/// @dev Fixed supply of 100,000,000 tokens minted to deployer
/// @dev Authority: 48 Stat. 112; UCC Arts. 3, 7, 9, 12
contract ShepardToken is ERC20, ERC20Burnable, Ownable {
    uint256 public constant MAX_SUPPLY = 100_000_000 * 10**18;

    constructor() ERC20("Shepard Protocol", "SHEPARD") Ownable(msg.sender) {
        _mint(msg.sender, MAX_SUPPLY);
    }
}
