// Please implement the `ComputationError.IllegalArgument` error.

pub const ComputationError = error{IllegalArgument};

pub fn steps(number: usize) anyerror!usize {
    if (number <= 0) {
        return ComputationError.IllegalArgument;
    }
    var num = number;
    var count: usize = 0;
    while (num != 1) {
        if (num % 2 == 0) {
            num /= 2;
        } else {
            num = (num * 3) + 1;
        }
        count += 1;
    }
    return count;
}
