with open('fileio.txt', 'a') as f:
    f.write('hello')
    f.write('\nworld')
with open('fileio.txt') as f:
    s = f.readlines()[1]
    print s

# Without context managers:

# f = open('fileio.txt', 'a')
# f.write('hello')
# f.write('\nworld')
# f.close()
# f = open('fileio.txt')
# s = f.readlines()[1]
# f.close()
# print s
