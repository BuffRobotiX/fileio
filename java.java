import java.io.*;
import java.util.*;

class Test {
  public static void  main(String[] args) throws IOException {
    String path = "fileio.txt";
    File file = new File(path);

    //Creates New File...
    try (FileOutputStream fout = new FileOutputStream(file)) {
      fout.write("hello\n".getBytes());
    }

    //Appends To New File...
    try (FileOutputStream fout2 = new FileOutputStream(file,true)) {
      fout2.write("world\n".getBytes());
    }

    //Reading the File...
    try (BufferedReader fin = new BufferedReader(new FileReader(file))) {
      fin.readLine();
      System.out.println(fin.readLine());
    }       
  }
}
