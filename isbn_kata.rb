def isbn_checker(book_number)
 book_number
  book_number_array
  remove_spaces_from_isbn(book_number_array)
  remove_dashes_from_isbn(book_number_array)
  length_verifier(book_number_array)
  multiply_each_digit_by_its_position_if_10_digits(book_number_array)
end

def book_number
  book_number= book_number.to_s
end

def book_number_array
  book_number_array=book_number.split(//)
  []<<book_number_array
end
 
 
def length_verifier(book_number_array)
  if book_number_array.length==10
    true
  elsif book_number_array.length==13
    true
  else
    false
  end
  end

def remove_dashes_from_isbn(book_number_array)
  if book_number_array.include?"-"
	book_number_array.delete!"-"
	else
	true
  end
  end

def remove_spaces_from_isbn(book_number_array)
  if book_number_array.include?" "
     book_number_array.delete!" "
	 else
	 true
  end
  end
  
 def multiply_each_digit_by_its_position_if_10_digits(book_number_array)
   sum=0
   while book_number_array.length==10
   book_number_array.each do |value,index_position|
   sum += value*(index_position+1)
   until index_position==[9]
   book_number_array=sum % 11
 if 
  book_number_array[9]==sum % 11
  true
 else
  false 
  puts"Not valid ISBN number"
 end
 end
 end
 end
 end