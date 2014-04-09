module d_io;

import std.stdio;

void main()
{
    auto f = File("fileio.txt", "w");
    f.writeln("hello");
    f.writeln("world");

    f.open("fileio.txt", "r");
    f.readln;
    auto s = f.readln;
    writeln(s);
}
