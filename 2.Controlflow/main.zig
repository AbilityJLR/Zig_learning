const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    const name = [_]u8{ 'P', 'e', 'd', 'r', 'o' };
    // for char in name
    for (name) |char| {
        try stdout.print("{d} | ", .{char});
    }

    const names = "Pedros";
    for (names, 0..) |_, i| {
        try stdout.print("{d} | ", .{i});
    }

    // while
    // var i: u8 = 1;
    // while (i < 5) {
    //     try stdout.print("{d} | ", .{i});
    //     i += 1;
    // }
    // or simply use increment expression after colon character (:)
    var i: u8 = 1;
    while (i < 5) : (i += 1) {
        try stdout.print("{d} | ", .{i});
    }
}
