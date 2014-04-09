io.open( 'TestIO.txt', 'w' ):write( 'hello' ):write( '\n', 'world' ):close()
aLine = io.open( 'TestIO.txt', 'r' ):read( '*a' ):match( '%C*%c*(.*)' )
print( aLine )
