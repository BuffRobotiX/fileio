main :: IO ()
main = let filePath = "fileio.txt" in
       do writeFile filePath "hello"
          appendFile filePath "\nworld"
          fileLines <- readFile filePath
          let secondLine = (lines fileLines) !! 1
          putStrLn secondLine

-- If you just want to read/write a file:

-- main :: IO ()
-- main = readFile "somefile.txt" >>= writeFile "someotherfile.txt"
