sc fileio.txt 'hello'
ac fileio.txt 'world'
$line = (gc fileio.txt)[1]
$line
