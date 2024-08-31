pub const pow = @import("std").math.pow;
fn numberofDigits(num: u128) u128 {
    var sum: u128 = 0;
    var n = num;
    while (n != 0) {
        n /= 10;
        sum += 1;
    }
    return sum;
}

pub fn isArmstrongNumber(num: u128) bool {
    var i = num;
    var sum: u128 = 0;
    const digitcount = numberofDigits(num);
    while (i != 0) : (i /= 10) {
        const n = i % 10;
        sum += pow(u128, n, digitcount);
    }
    return sum == num;
}
