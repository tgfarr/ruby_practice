def substring(word, dictionary)
  

  dictionary.each do |x|
    word_arr = word.split("")  
    dic_arr = x.split("")      
    compare = word_arr & dic_arr
    match = compare.join.to_s
    
    if match == x
	puts x
    end
  end
end

dictionary = ["man","bat","ha","t","them","her","ha","sick","2","sit"]
substring("hat", dictionary)
