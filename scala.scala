/** Using standard library: */

val path = "fileio.txt"
val fout = new FileWriter(path)
fout write "hello\n"
fout.close()
val fout0 = new FileWriter(path, true)
fout0 write "world\n"
fout0.close() 
val str = Source.fromFile(path).getLines.toSeq(1)
println(str)

/** Using Josh Suereth's Scala-ARM Library: */

/**
  * val path = "fileio.txt"
  * for(fout <- managed(new FileWriter(path))) 
  *   fout write "hello\n"
  * for(fout <- managed(new FileWriter(path, true))) 
  *   fout write "world\n"
  * val str = Source.fromFile(path).getLines.toSeq(1)
  * println(str)      
  */

/** Using the same file descriptor to write the two strings: */

/** Using standard library: */

/**
  * val path = "fileio.txt"
  * val fout = new FileWriter(path)
  * fout write "hello\n"
  * fout write "world\n"
  * fout.close()
  * val str = Source.fromFile(path).getLines.toSeq(1)
  * println(str)
  */

/** Using Josh Suereth's Scala-ARM Library: */

/**
  * val path = "fileio.txt"
  * for(fout <- managed(new FileWriter(path))){
  *   fout write "hello\n"
  *   fout write "world\n"
  * }
  * val str = Source.fromFile(path).getLines.toSeq(1)
  * println(str)
  */