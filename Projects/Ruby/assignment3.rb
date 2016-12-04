puts "What is your email?"
email = gets.chomp

File.read('email-list.txt').each_line do |l|
  if l.include? email
    l.slice! email
    l.slice! "name: "
    l.slice! "email: "
    puts "Hello " + l.capitalize
    exit
  end
end

puts "Your email address is not on the list."