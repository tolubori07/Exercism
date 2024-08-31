const pow = @import("std").math.pow;
const max = @import("std").math.maxInt;
pub const ChessboardError = error{IndexOutOfBounds};

pub fn square(index: usize) ChessboardError!u64 {
    if (index > 64 or index < 1) return ChessboardError.IndexOutOfBounds;
    return @as(u64, 1) << @intCast(index - 1);
}

pub fn total() u64 {
    return max(u64);
}
