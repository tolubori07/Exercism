const std = @import("std");
pub fn containsChar(array: []const u8, target: u8) bool {
    for (array) |item| {
        if (item == target) {
            return true;
        }
    }
    return false;
}

pub fn score(s: []const u8) u32 {
    const bracket1 = [_]u8{ 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' };
    const bracket2 = [_]u8{ 'D', 'G' };
    const bracket3 = [_]u8{ 'B', 'C', 'M', 'P' };
    const bracket4 = [_]u8{ 'F', 'H', 'V', 'W', 'Y' };
    var count: u32 = 0;
    for (s) |nvalue| {
        const value: u8 = std.ascii.toUpper(nvalue);

        if (containsChar(&bracket1, value)) {
            count += 1;
        } else if (containsChar(&bracket2, value)) {
            count += 2;
        } else if (containsChar(&bracket3, value)) {
            count += 3;
        } else if (containsChar(&bracket4, value)) {
            count += 4;
        } else if (value == 'K') {
            count += 5;
        } else if ((value == 'J') or (value == 'X')) {
            count += 8;
        } else if ((value == 'Q') or (value == 'Z')) {
            count += 10;
        }
    }
    return count;
}
