const std = @import("std");
pub fn eggCount(number: usize) usize {
    var num: usize = number;
    var result: usize = 0;
    while (num != 0) : (num /= 2) {
        if (num % 2 == 1) {
            result += 1;
        }
    }
    std.debug.print("{d}", .{num});
    return result;
}
