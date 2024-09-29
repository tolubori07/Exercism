const mem = @import("std").mem;
pub fn rotate(allocator: mem.Allocator, text: []const u8, shiftKey: u5) mem.Allocator.Error![]u8 {
    var cipherText = try allocator.alloc(u8, text.len);
    for (text, 0..) |value, i| {
        if (value >= 'A' and value <= 'Z') {
            const cipherChar = (((value - 'A') + @as(u8, shiftKey)) % 26) + 'A';
            cipherText[i] = cipherChar;
        } else if ('a' <= value and 'z' >= value) {
            const cipherChar = (((value - 'a') + @as(u8, shiftKey)) % 26) + 'a';
            cipherText[i] = cipherChar;
        } else {
            cipherText[i] = value;
        }
    }
    return cipherText;
}
