const std = @import("std");

fn newtonise(guess: f64, radicand: f64) f64 {
    return (guess + (radicand / guess)) / 2;
}

pub fn squareRoot(radicand: f64) f64 {
    const tolerance: f64 = 0.00001;
    var guess: f64 = @as(f64, radicand) / 2; // Initial guess
    var next_guess: f64 = newtonise(guess, @as(f64, radicand));

    // Continue iterating until the difference between guesses is smaller than the tolerance
    while (@abs(guess - next_guess) > tolerance) {
        guess = next_guess;
        next_guess = newtonise(guess, @as(f64, radicand));
    }

    return std.math.floor(next_guess);
}
