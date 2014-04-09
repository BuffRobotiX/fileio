% read_line_to_codes is defined in YAP library already.
% Uncomment the next line and remove the makeshift replacement definition to use it.
% use_module(library(readutil)).

readcodes(Stream,[]) :- peek_char(Stream,'\n'),get_char(Stream,'\n');peek_char(Stream,end_of_file).
readcodes(Stream,[First|Rest]) :- get_code(Stream,First),readcodes(Stream,Rest).

read_line_to_codes(Stream,Line) :- readcodes(Stream,Line),!.

:- open('fileio.txt',write,Stream),write(Stream,'hello\n'),close(Stream).
:- open('fileio.txt',append,Stream),write(Stream,'world'),close(Stream).

secondline(L) :- open('fileio.txt',read,Stream),read_line_to_codes(Stream,_),read_line_to_codes(Stream,L),close(Stream).
:- secondline(L),format('~s\n',[L]).
