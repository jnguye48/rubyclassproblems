print "What is your name?"
name = gets.chomp

print "What is your DOB?"
dob = gets.chomp

open('info.txt', 'a') { |f|
  f.puts name, dob
}