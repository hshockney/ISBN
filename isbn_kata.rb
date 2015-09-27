 def isbn_checker(book_number)
   no_spaces_book_number= remove_spaces_from_isbn(book_number)
   no_dashes_or_spaces_book_number= remove_dashes_from_isbn(no_spaces_book_number) 
    if length_verifier(no_dashes_or_spaces_book_number)== true
    isbn_array=book_number_array(no_dashes_or_spaces_book_number)
	check_digit_contains_10(isbn_array)
	check_digit_valid_10_math(isbn_array)
	check_digit_valid_13_math(isbn_array)
	 else
	 false
   end
 end
 
 
def length_verifier(book_number)
  if book_number.length==10 || book_number.length==13
    true
  else
    false
  end
  end
  
 def book_number_array(book_number)
  book_number_array=book_number.split(//,)

end

def remove_dashes_from_isbn(book_number_array)
 if book_number_array.eql?"-"
 no_dashes_isbn = book_number_array.delete!"-"
 else
 book_number_array
 end

 book_number_array
  end

 def remove_spaces_from_isbn(book_number_array)
   if book_number_array.eql?" "
  no_spaces_isbn =  book_number_array.delete!" "
	 else
	 book_number_array
	 end
	 book_number_array
   end
  
  def check_digit_contains_10(isbn_array)
  if isbn_array[9]=="x" || isbn_array[9]=="X"
  isbn_array[9]=10
  end
  isbn_array[9]==10
  end

  def check_digit_valid_10_math(isbn_array)
    


	math_10_array=[]
	 isbn_array.each do|value|
	 math_10_array<< value.to_i
	 end
	
	sum=0
	 math_10_array.each.with_index do|value,index_position|
	break if index_position == 9
	  sum += value *(index_position+1)
	 end
	 
	 check_digit= (sum % 11)
	 if check_digit == math_10_array[9]
	 true
	 else
	 false
	check_digit==math_10_array[9] 
 end
 end
 def check_digit_valid_13_math(isbn_array) 
 
   math_13_array=[]
   isbn_array.each{ |value|
   math_13_array<<value.to_i}
 
 sum=0
 check_digit=0
 math_13_array.each_with_index do |value,index|
 break if index==12
       if index  %2==0
	   sum+= value * 1
	   else
	   sum += value * 3
	         end
			 
	sum= sum %10
	check_digit=(10-sum%10)
	
	  if check_digit==10
	  check_digit=0
	  end
	  math_13_array[12]== check_digit
end
end 
 
 
 
 
 
 
 
 