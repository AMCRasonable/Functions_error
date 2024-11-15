# Auction Smart Contract

## Overview
This project demonstrates the use of require(), assert(), and revert() statements in Solidity through an auction scenario. These statements help in controlling the flow of execution by ensuring the proper conditions are met, validating logic, and handling errors.

## Smart Contract Details
1. checkMinimumBid: Verifies whether the bid amount meets the minimum requirement using the require() statement.
   
2. validateHigherBid: Validates whether the user's bid is higher than a predefined default bid using the assert() statement.
   
3. checkSufficientBalance: Ensures the payment does not exceed the account balance, utilizing the revert() statement for error handling.

## Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Functions_error.sol). Copy and paste the code to the file.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Functions_error.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Auction" contract from the dropdown menu, and then click on the "Deploy" button.

## Author
Ana Mary Colin A. Rasonable
