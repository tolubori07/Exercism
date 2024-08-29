pub fn binarySearch(comptime T: type, target: T, items: []const T) ?usize {
    var min: usize = 0;
    if (items.len == 0) return null;
    var max: usize = items.len - 1;
    while (min <= max) {
        const midpoint: usize = (min + max) / 2;

        if (items[midpoint] == target) {
            return midpoint;
        } else if (items[midpoint] > target) {
            if (midpoint == 0) break;
            max = midpoint - 1;
        } else {
            min = midpoint + 1;
        }
    }

    return null;
}
