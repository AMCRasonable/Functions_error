// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Auction {
    // Check if the input amount meets the minimum bid requirement
    function checkMinimumBid(uint _inputMoney) 
        public pure returns (string memory) {
        uint _minBid = 10000;
        require(_inputMoney >= _minBid, "Amount did not reach the minimum bid");
        return "Amount meets the minimum bid";
    }

    // Validate if the user's bid exceeds the default bid
    function validateHigherBid(uint _userBid) 
        public pure returns (string memory) {
        uint _defaultBid = 30000;
        assert(_userBid > _defaultBid); 
        return "Your bid is higher than the previous bidder";
    }

    // Check if the payment is sufficient compared to the account balance
    function checkSufficientBalance(uint _payment) 
        public pure {
        uint _accountBalance = 50000;
        if (_payment > _accountBalance) {
            revert("Insufficient balance in account");
        }
    }
}
