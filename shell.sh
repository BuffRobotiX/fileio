#!/bin/sh
echo "hello" > fileio.txt
echo "world" >> fileio.txt
LINE=`sed -ne2p fileio.txt`
echo $LINE
# Actually the sed -n "2p" part prints the second line, but the question asks for the second line to be stored in a variable and then printed, so...

# Here's a shell script using just builtin commands, rather than invoking external commands such as sed or tail as previous responses have done.

# #!/bin/sh
#
# echo hello > fileio.txt             # Print "hello" to fileio.txt
# echo world >> fileio.txt            # Print "world" to fileio.txt, appending
#                                     # to what is already there
# { read input; read input; } < fileio.txt  
#                                     # Read the first two lines of fileio.txt,
#                                     # storing the second in $input
# echo $input                         # Print the contents of $input

# Note that while you can read lines one at a time, like I do here, a much more common pattern would be to wrap it in a while loop:

# while read foo bar baz
# do
#   process $foo $bar $baz
# done < input.txt
