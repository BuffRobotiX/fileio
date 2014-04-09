package main

import (
  "os"
  "bufio"
  "log"
)

func main() {
  file, err := os.Open("fileio.txt", os.O_RDWR | os.O_CREATE, 0666)
  if err != nil {
    log.Exit(err)
  }
  defer file.Close()

  _, err = file.Write([]byte("hello\n"))
  if err != nil {
    log.Exit(err)
  }

  _, err = file.Write([]byte("world\n"))
  if err != nil {
    log.Exit(err)
  }

  // seek to the beginning 
  _, err = file.Seek(0,0)
  if err != nil {
    log.Exit(err)
  }

  bfile := bufio.NewReader(file)
  _, err = bfile.ReadBytes('\n')
  if err != nil {
    log.Exit(err)
  }

  line, err := bfile.ReadBytes('\n')
  if err != nil {
    log.Exit(err)
  }

  os.Stdout.Write(line)
}
