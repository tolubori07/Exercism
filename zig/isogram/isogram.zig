const std = @import("std");

pub fn isIsogram(str: []const u8) bool {
    for (str, 0..) |c, i| {
        const cl = std.ascii.toLower(c);
        for (str[i + 1 ..]) |j| {
            const jl = std.ascii.toLower(j);
            if (cl == jl and cl >= 'a' and cl <= 'z') return false;
        }
    }
    return true;
}
