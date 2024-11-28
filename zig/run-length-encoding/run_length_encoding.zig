const std = @import("std");

pub fn encode(buffer: []u8, string: []const u8) []u8 {
    var count: u8 = 1;
    for (string, 0..) |value, i| {
        if (value == string[i - 1]) {
            count += 1;
        } else {
            const writer = std.io.fixedBufferStream(buffer);
            try writer.writer().print("{}{}", .{count}, .{string[i - 1]});
        }
    }
}

pub fn decode(buffer: []u8, string: []const u8) []u8 {
    _ = buffer;
    _ = string;
    @compileError("please implement the decode function");
}
