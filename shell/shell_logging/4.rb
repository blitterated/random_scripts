puts "4.start"
STDERR.puts "4.boom"
puts %x{./5.sh}
STDERR.puts "4.pow"
puts "4.end"
