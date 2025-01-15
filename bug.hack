function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return x + bar(x - 1);
  }
}

function main(): void {
  print_int(foo(5)); //prints 120
  print_int(bar(5)); //prints 15
}

/*
Uncommon bug: Stack Overflow in recursive functions

Recursive functions call themselves repeatedly. If they don't have a proper base case, or the base case is not reached, they can run until they cause a stack overflow. 

In this case, both foo and bar functions are recursive and have base cases to prevent stack overflow. 
However, if the function was changed to work on larger numbers, say foo(10000)  there is potential for a stack overflow.
*/