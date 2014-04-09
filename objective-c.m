NSFileHandle *fh = [NSFileHandle fileHandleForUpdatingAtPath:@"fileio.txt"];

[[NSFileManager defaultManager] createFileAtPath:@"fileio.txt" contents:nil attributes:nil];

[fh writeData:[@"hello" dataUsingEncoding:NSUTF8StringEncoding]];
[fh writeData:[@"\nworld" dataUsingEncoding:NSUTF8StringEncoding]];

NSArray *linesInFile = [[[NSString stringWithContentsOfFile:@"fileio.txt" 
                                             encoding:NSUTF8StringEncoding 
                                                error:nil] stringByStandardizingPath] 
                          componentsSeparatedByString:@"\n"];

NSLog(@"%@", [linesInFile objectAtIndex:1]);
