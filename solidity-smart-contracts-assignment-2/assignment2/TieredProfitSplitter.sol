pragma solidity >=0.5.0;

// lvl 2: tiered split
contract TieredProfitSplitter {
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.
    address payable employee_one;
    address payable employee_two;
    address payable employee_three;

    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    // Should always return 0! Use this to test your `deposit` function's logic
    function balance() public view returns(uint) {
            
    }

    function deposit() public payable {
        // @TODO: Calculate and transfer the distribution percentage
        // Step 1: Set amount to equal `points` * the number of percentage points for this employee
        // Step 2: Add the `amount` to `total` to keep a running total
        // Step 3: Transfer the `amount` to the employee


        // @TODO: Repeat the previous steps for `employee_two` and `employee_three`
  
       
        // @TODO: take care of a potential remainder by sending back to CEO
    }

    function() external payable {
        deposit();
    }
}

