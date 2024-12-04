// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ToyShop {
    uint public balance;
    
    // Constructor to initialize balance to 0
    constructor() {
        balance = 0;
    }
    
    // Function to buy a toy worth 500
    function buyToy() public {
        uint toyPrice = 500;
        
        // require() to check if the balance is sufficient
        require(balance >= toyPrice, "Not enough funds to buy the toy.");
        
        balance -= toyPrice;
    
        // assert() to check that the balance should never be negative
        assert(balance >= 0);
        
        // revert if the balance is zero after purchase
        if (balance == 0) {
            revert("Balance is zero after buying the toy. Please reload your account.");
        }
    }
    
    // Function to view the current balance
    function getBalance() public view returns (uint) {
        return balance;
    }

    // Function to reload account
    function depositAmount(uint amount) public {
        require(amount > 0, "Deposit amount must be greater than 0.");
        balance += amount;
    }
}
