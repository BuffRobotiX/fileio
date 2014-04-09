#!/usr/bin/env escript

main(_Args) ->
  Filename = "fileio.txt",
  ok = file:write_file(Filename, "hello\n", [write]),
  ok = file:write_file(Filename, "world\n", [append]),
  {ok, File} = file:open(Filename, [read]),
  {ok, _FirstLine} = file:read_line(File),
  {ok, SecondLine} = file:read_line(File),
  ok = file:close(File),
  io:format(SecondLine).
