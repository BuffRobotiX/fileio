with open('fileio.txt', 'w') as f:
   f.write('hello')
with open('fileio.txt', 'a') as f:
   f.write('\nworld')
with open('fileio.txt') as f:
   s = f.readlines()[1]
print(s)

# You don't need to reopen the file before each operation. You can write the whole code inside one with block.

# with open('fileio.txt', 'w+') as f:
#    f.write('hello')
#    f.write('\nworld')
#    s = f.readlines()[1]
# print(s)
