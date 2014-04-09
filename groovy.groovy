new File("fileio.txt").with { 
    write  "hello\n"
    append "world\n"   
    println secondLine = readLines()[1]
}
