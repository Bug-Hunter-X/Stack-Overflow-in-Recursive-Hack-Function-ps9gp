# Stack Overflow in Recursive Hack Function

This repository demonstrates a potential stack overflow error in recursive Hack functions.  The example functions, `foo` and `bar`, calculate factorials and sums respectively.  While they include base cases to prevent overflow with small inputs, increasing input size can lead to stack overflow errors. 

## How to Reproduce

1. Clone this repository.
2. Compile and run the `bug.hack` file using a Hack compiler. 
3. Observe the correct output for small inputs (e.g., `foo(5)`).
4. Modify the input value to a very large number (e.g., `foo(10000)`) to simulate the stack overflow condition.

## Solution

The `bugSolution.hack` file demonstrates a solution to prevent stack overflow by implementing an iterative approach. Iterative functions don't repeatedly call themselves, thereby avoiding the risk of stack overflow.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have suggestions or improvements.