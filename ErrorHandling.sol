// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandlingContract {
    uint public value;

    function setValue(uint _value) external {
        // Using require to validate a condition
        require(_value > 0, "Value must be greater than zero.");

        value = _value;
    }

    function getValue() external view returns (uint) {
        return value;
    }

    function assertExample(uint _a, uint _b) external pure returns (uint) {
        uint result = _a + _b;

        // Using assert to check for an unexpected condition
        assert(result > _a);

        return result;
    }

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
}
