puts "2.start"
STDERR.puts "2.boom"
puts %x{./3.sh}
STDERR.puts "2.pow"
puts "2.end"
