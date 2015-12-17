def caesar_cipher(text, shift) 

  code_word = ""
  
  text.each_char do |i|
    shift.times do
      if(i == "z")
	i = "a"
	next
      elsif(i == "Z")
	i = "A"
	next
      end
      i.next!
      i == "%" ? i = " " : ""
    end
    code_word += i
  end
  puts code_word
end

puts "What text would you like?"
text = gets.chomp
puts "How much shift?"
shift = gets.to_i
caesar_cipher(text, shift)
