pub const DnaError = error{ EmptyDnaStrands, UnequalDnaStrands };

pub fn compute(first: []const u8, second: []const u8) DnaError!usize {
    var count: usize = 0;

    if (first.len == 0 or second.len == 0) {
        return DnaError.EmptyDnaStrands;
    }

    if ((first.len == 1 and second.len == 1)) {
        if (first[0] == second[0]) {
            return 0;
        } else return 1;
    }

    if (first.len != second.len) {
        return DnaError.UnequalDnaStrands;
    } else {
        for (0..first.len) |i| {
            if (first[i] != second[i]) {
                count += 1;
            }
        }
    }
    return count;
}
