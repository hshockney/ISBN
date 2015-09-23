 def isbn_checker(book_number)
   no_spaces_book_number= remove_spaces_from_isbn(book_number)
   no_dashes_or_spaces_book_number= remove_dashes_from_isbn(no_spaces_book_number) 
   if length_verifier(no_dashes_or_spaces_book_number)==true
    isbn_array=book_number_array(no_dashes_or_spaces_book_number)
	check_digit_valid_10_math(isbn_array)
	check_digit_valid_13_math(isbn_array)
	else
	false
  end
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
  
 def book_number_array(book_number)
  book_number_array=book_number.split(//,)

end

def remove_dashes_from_isbn(book_number_array)
 if book_number_array.include?"-"
 no_dashes_isbn = book_number_array.delete!"-"
 else
 book_number_array
 end

 book_number_array
  end

 def remove_spaces_from_isbn(book_number_array)
   if book_number_array.include?" "
      book_number_array.delete!" "
	 
	 end
	 book_number_array
   end
  
  

  def check_digit_valid_10_math(isbn_array)
    # new_array=[]
	# book_number_array.each {|value|
	# new_array<< value.to_i}
	
	sum=0
	if isbn_array.length==10
	  isbn_array.each.with_index do|value,index_position|
	break if index_position == 9
	  sum += value*(index_position+1)
	 end
	 end
	 check_digit= sum % 11
	 if check_digit == isbn_array[9]
	 true
	 elsif
	 check_digit==10
	 "X"
	 else
	 false
	 
 end
 end
 def check_digit_valid_13_math(isbn_array) 
   new_array=[]
   new_array.each{ |value|
   new_array<<value.to_i}
 
 sum=0
 check_digit=0
 
 new_array.each_with_index do |value,index|
 break if index==12
       if index  %2==0
	   sum+= value * 1
	   else
	   sum += value * 3
	         end
			 end
	sum= sum %10
	check_digit=(10-sum)
	
	  if check_digit==10
	  check_digit=0
	  end
	  new_array[12]== check_digit
end
 
 
 
 
 
 
 
 
 