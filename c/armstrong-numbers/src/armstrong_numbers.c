#include "armstrong_numbers.h"

#include <assert.h>

// Count the number of digits in a given integer.
static int count_digits(int n)
{
    int sum = 1;
    while (n > 10) {
        sum++;
        n /= 10;
    }
    return sum;
}

// Raise a number a to a power of b. (Will only handle positive powers.)
static int powi(int a, int b)
{
    assert(b > 0);
    int pow = a;
    while (b > 1) {
        pow *= a;
        b--;
    }
    return pow;
}

// An Armstrong number is a number that is the sum of its own digits each raised
// to the power of the number of digits.
bool is_armstrong_number(int candidate)
{
    int n_digits = count_digits(candidate);
    int sum = 0;
    int n = candidate;
    while (n > 0) {
        int digit = n % 10;
        sum += powi(digit, n_digits);
        n /= 10;
    }
    return candidate == sum;
}

