
# Project Title
Smart Contract Error Handling

## Description
This project showcases a smart contract that implements the `require()`, `assert()`, and `revert()` statements in the Solidity programming language. The contract demonstrates how to handle errors and validate conditions in a secure and efficient manner. It serves as a useful reference for developers looking to understand and utilize error handling mechanisms in their own smart contracts.

## Getting Started

### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Steps to interact with the contract using Remix:

1. Open the contract file in Remix IDE.
2. Select the appropriate compiler version.
3. Compile the contract.
4. Deploy the contract to a local blockchain or a test network of your choice.
5. Use the contract functions to set values, retrieve values, and trigger error conditions.
6. Observe the outputs and transaction status in the Remix console.

### Contract Functions
1. `setValue(uint _value)`: Sets the value of `value` variable, validating that the input value is greater than zero using the `require()` statement.

```javascript
 function setValue(uint _value) external {
        // Using require to validate a condition
        require(_value > 0, "Value must be greater than zero.");

        value = _value;
    }

```
2. `getValue()`: Returns the current value stored in the contract.

```javascript
 function getValue() external view returns (uint) {
        return value;
    }

```

3. `assertExample(uint _a, uint _b)`: Adds two numbers together and uses the `assert()` statement to verify that the result is greater than the first input. If the assertion fails, the transaction is reverted.

```javascript
   function assertExample(uint _a, uint _b) external pure returns (uint) {
        uint result = _a + _b;

        // Using assert to check for an unexpected condition
        assert(result > _a);

        return result;
    }

```
4. `revertExample(uint _a, uint _b)`: Divides the first input by the second input. If the second input is zero, the transaction is reverted with a custom error message stating that division by zero is not allowed.
```javascript
 function revertExample(uint _a, uint _b) external pure returns (uint) {
        uint result;

        if (_b == 0) {
            // Using revert to revert the transaction with a custom error message
            revert("Cannot divide by zero.");
        } else {
            result = _a / _b;
        }

        return result;
    }

```
## Author
Abhishek Ranjan

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
