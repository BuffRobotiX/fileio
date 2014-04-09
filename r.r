cat("hello\n", file="fileio.txt")
cat("world\n", file="fileio.txt", append=TRUE)
line2 = readLines("fileio.txt", n=2)[2]
cat(line2)
