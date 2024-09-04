const print = @import("std").debug.print;

pub fn isValid(s: []const u8) bool {
    const num = s.len;
    if (num <= 1) return false;

    var sum: u128 = 0;
    var i: usize = num;

    while (i > 0) : (i -= 1) {
        const value = s[i - 1];
        if ((num - i) % 2 == 0) {
            sum += value * 2;
        } else {
            sum += value;
        }
    }

    return sum % 10 == 0;
}
