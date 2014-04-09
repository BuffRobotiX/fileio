PATH = 'fileio.txt'
File.open(PATH, 'w') { |file| file.puts "hello" }
File.open(PATH, 'a') { |file| file.puts "world" }
puts line = File.readlines(PATH).last
