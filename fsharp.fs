let path = "fileio.txt"
File.WriteAllText(path, "hello")
File.AppendAllText(path, "\nworld")

let secondLine = File.ReadLines path |> Seq.nth 1
printfn "%s" secondLine
