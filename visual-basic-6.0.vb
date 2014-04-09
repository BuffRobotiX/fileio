f = open('fileio.txt', 'a')
f.write('hello')
f.write('\nworld')
f.close()
f = open('fileio.txt')
s = f.readlines()[1]
f.close()
print s
