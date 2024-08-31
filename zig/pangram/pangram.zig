const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    var alphabet = std.bit_set.IntegerBitSet(26).initEmpty();

    for (str) |char| {
        if (!std.ascii.isAlphabetic(char)) continue;
        alphabet.set(std.ascii.toLower(char) - 'a');
    }

    return alphabet.count() == 26;
}
