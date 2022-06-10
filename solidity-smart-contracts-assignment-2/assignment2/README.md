### Level Two: The `TieredProfitSplitter` Contract

In this contract, rather than splitting the profits between Associate-level employees, you will calculate rudimentary percentages for different tiers of employees (CEO, CTO, and Bob).

Using the starter code, within the `deposit` function, perform the following:

* Calculate the number of points/units by dividing `msg.value` by `100`.

  * This will allow us to multiply the points with a number representing a percentage. For example, `points * 60` will output a number that is ~60% of the `msg.value`.

* The `uint amount` variable will be used to store the amount to send each employee temporarily. For each employee, set the `amount` to equal the number of `points` multiplied by the percentage (say, 60 for 60%).

* After calculating the `amount` for the first employee, add the `amount` to the `total` to keep a running total of how much of the `msg.value` we are distributing so far.

* Then, transfer the `amount` to `employee_one`. Repeat the steps for each employee, setting the `amount` to equal the `points` multiplied by their given percentage.

* For example, each transfer should look something like the following for each employee, until after transferring to the third employee:

  * Step 1: `amount = points * 60;`

    * For `employee_one`, distribute `points * 60`.

    * For `employee_two`, distribute `points * 25`.

    * For `employee_three`, distribute `points * 15`.

  * Step 2: `total += amount;`

  * Step 3: `employee_one.transfer(amount);`

* Send the remainder to the employee with the highest percentage by subtracting `total` from `msg.value`, and sending that to an employee.

* Deploy and test the contract functionality by depositing various Ether values (greater than 100 wei).

  * The provided `balance` function can be used as a test to see if the logic you have in the `deposit` function is valid. Since all of the Ether should be transferred to employees, this function should always return `0`, since the contract should never store Ether itself.

  * Note: The 100 wei threshold is due to the way we calculate the points. If we send less than 100 wei, for example, 80 wei, `points` would equal `0` because `80 / 100` equals `0` because the remainder is discarded. We will learn more advanced arbitrary precision division later in the course. In this case, we can disregard the threshold as 100 wei is a significantly smaller value than the Ether or Gwei units that are far more commonly used in the real world (most people aren't sending less than a penny's worth of Ether).