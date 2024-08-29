# Collatz Conjecture

Welcome to Collatz Conjecture on Exercism's Zig Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

The Collatz Conjecture or 3x+1 problem can be summarized as follows:

Take any positive integer n.
If n is even, divide n by 2 to get n / 2.
If n is odd, multiply n by 3 and add 1 to get 3n + 1.
Repeat the process indefinitely.
The conjecture states that no matter which number you start with, you will always reach 1 eventually.

Given a number n, return the number of steps required to reach 1.

## Examples

Starting with n = 12, the steps would be as follows:

0. 12
1. 6
2. 3
3. 10
4. 5
5. 16
6. 8
7. 4
8. 2
9. 1

Resulting in 9 steps.
So for input n = 12, the return value would be 9.

## Error handling

For this exercise you must add an error set `ComputationError` that contains the `IllegalArgument` error.
Remember to make it public!
The `steps` function must return `ComputationError.IllegalArgument` when its input is equal to zero.

Later exercises will usually omit explicit instructions like this.
In general, Exercism expects you to read the test file when implementing your solution.

For more details about errors in Zig, see:

- [Learning Zig - Errors][learning-zig-errors]
- [Ziglings - Exercise 21][ziglings-exercise-21]
- [Zighelp - Errors][zighelp-errors]

[learning-zig-errors]: https://www.openmymind.net/learning_zig/language_overview_2/#errors
[zighelp-errors]: https://zighelp.org/chapter-1/#errors
[ziglings-exercise-21]: https://codeberg.org/ziglings/exercises/src/commit/0d46acfa02d0c29fdfb3651e82a77284dd8f2e00/exercises/021_errors.zig

## Source

### Created by

- @massivelivefun

### Contributed to by

- @ee7

### Based on

An unsolved problem in mathematics named after mathematician Lothar Collatz - https://en.wikipedia.org/wiki/3x_%2B_1_problem