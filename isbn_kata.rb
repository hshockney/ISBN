def isbn_checker(book_number)
  
  remove_spaces_from_isbn(book_number)
  remove_dashes_from_isbn(book_number)
  length_verifier(book_number)
  #multiply_each_digit_by_its_position_if_10_digits(book_number)
end

def length_verifier(book_number)
  if book_number.length==10
    true
  elsif book_number.length==13
    true
  else
    false
  end
  end

def remove_dashes_from_isbn(book_number)
  if book_number.include?"-"
	book_number.delete!"-"
	else
	true
  end
  end

def remove_spaces_from_isbn(book_number)
  if book_number.include?" "
     book_number.delete!" "
	 else
	 true
  end
  end
  
# def multiply_each_digit_by_its_position_if_10_digits(book_number)
# if book_number.length==10
 # book_number.split(",")
# book_number_array=[]<< book_number.split(",")
# book_number_array.each do |value,index_position|
# sum= value*index_position+value*index_position+value*index_position+value*index_position+value*index_position+value*index_position+value*index_position+value*index_position+value*index_position+
# book_number_array=sum %11
# end
# end
# end