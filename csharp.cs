string path = "fileio.txt";
File.WriteAllLines(path, new[] { "hello"}); //Will end it with Environment.NewLine
File.AppendAllText(path, "world");

string secondLine = File.ReadLines(path).ElementAt(1);
Console.WriteLine(secondLine);

// File.ReadLines(path).ElementAt(1) is .Net 4.0 only, the alternative is File.ReadAllLines(path)[1] which parses the whole file into an array.
