// What are the runtimes for the following problems?
// VI.1: The following code computes the product of a and b.
function product(a, b) {
  let sum = 0;
  for (let i = 0; i < b; i++) {
    sum += a;
  }
  return sum;
}

// The largest scaling term is b in this problem, as the for loop relies upon
// b. As such, the time-complexity is O(b).

// VI.2: The following code computes a ** b.
function power(a, b) {
  if (b < 0) {
    return 0;
  } else if (b === 0) {
    return 1;
  } else {
    return a * power(a, b - 1);
  }
}

// This is a recursive function that multiplies a b times. As such, the
// the time complexity is O(b).

function mod(a, b) {
  if (b <= 0) {
    return -1;
  }
  return a - Math.floor(a / b);
}

// This problem does constant work regardless of its inputs. It either
// returns early or substracts and divides.
// The time complexity is O(1);
