#define fileio
file = file_text_open_write("fileio.txt")
file_text_write_string(file, "hello")
file_text_writeln(file)
file_text_write_string(file, "world")
file_text_close(file)

file_text_open_read("fileio.txt")
str = file_text_read_string(file)
file_text_readln(file)
str += " "
str += file_text_read_string(file)

show_message(str)

