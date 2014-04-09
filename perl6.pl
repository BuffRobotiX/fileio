use v6;

my $path = 'fileio.txt';

# Open $path for writing.
given open($path, :w) {
    .say('hello'); # Print the line "hello\n" to it.
    .close; # Close the file.
}

# Open the file for appending.
given open($path, :a) {
    .say('world'); # Append the line "world\n" to it.
    .close;
}

my $line = lines($path)[1]; # Get the second line. lines returns a lazy iterator.
say $line; # Perl 6 filehandles autochomp, so we use say to add a newline.


# Here's an alternate solution with a small helper function to avoid the need to explicitly close the file.

# use v6;
#
# sub with-file($path, *&cb, *%adverbs) {
#     given open($path, |%adverbs) {
#         .&cb;
#         .close;
#     }
# }
#
# my $path = 'fileio.txt';
#
# # Open $path for writing.
# with-file $path, :w, {
#     .say('hello'); # Print the line "hello\n" to it.
# };
#
# # Open the file for appending.
# with-file $path, :a, {
#     .say('world'); # Append the line "world\n" to it.
# };
#
# my $line = lines($path)[1]; # Get the second line. lines returns a lazy iterator.
# say $line; # Perl 6 filehandles autochomp, so we use say to add a newline.
