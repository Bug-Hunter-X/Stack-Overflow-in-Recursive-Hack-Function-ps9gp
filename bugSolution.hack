function foo_iterative(x: int): int {
  var result: int = 1;
  for (var i = 1; i <= x; i++) {
    result = result * i;
  }
  return result;
}

function bar_iterative(x: int): int {
  var result: int = 0;
  for (var i = 1; i <= x; i++) {
    result = result + i;
  }
  return result;
}

function main(): void {
  print_int(foo_iterative(5)); //prints 120
  print_int(bar_iterative(5)); //prints 15
  print_int(foo_iterative(10000)); //Works without overflow
  print_int(bar_iterative(10000)); //Works without overflow
}

/*
Solution: Iterative Approach

The iterative versions of the functions avoid recursion. They use loops to accomplish the same task, preventing stack overflow regardless of input size.
*/