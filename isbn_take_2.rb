def ISBN_main_function(isbn_number)
  remove_dashes_from_isbn(isbn_number)
 remove_spaces_from_isbn(isbn_number)
 isbn_array= convert_string_to_array(isbn_number)
 
check_length_10_or_13_digits(isbn_array)
 
 

  
 # see_if_check_digit_is_x(isbn_array)
  algorithm_for_10_digits(isbn_array)
 # else isbn_array==13
 # see_if_check_digit_is_x(isbn_array)
 #algorithm_for_13_digits(isbn_array)

  
 
end




def remove_dashes_from_isbn(isbn_number)
 if isbn_number.include?"-"
 isbn_number= isbn_number.delete!'-'
 else
  true
 end
isbn_number
 end

def remove_spaces_from_isbn(isbn_number)
 if isbn_number.include?" "
 isbn_number=isbn_number.delete!' '
 else
  true
 end
isbn_number
 end

 
 def convert_string_to_array(isbn_number)
  isbn_array=isbn_number.split(//)
 end 
 
 
 
 
 def check_length_10_or_13_digits(isbn_array)
  if isbn_array.size==10 
  true
  elsif
  isbn_array.size==13
  true
  else 
  false
 end
 end



 # def see_if_check_digit_is_x(isbn_array)
 # if  isbn_array[9]=="x" || isbn_array[9]=="X"
    # isbn_array[9]=10
  # end
  # isbn_array[9]==10
  #algorithm_for_10_digits(isbn_array)
 #end

  def algorithm_for_10_digits(isbn_array)
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
 
  # def algorithm_for_13_digits(isbn_array)
  # math_13_array=[]
    # isbn_array.each{ |value|
    # math_13_array<<value.to_i}
 
  # sum=0
  # check_digit=0
  # math_13_array.each_with_index do |value,index|
  break if index==12
         if index  %2==0
	     sum+= value * 1
	     else
	    sum += value * 3
	         
			 
	  sum= sum %10
	  check_digit=(10-sum%10)
	
	    if check_digit==10
	    check_digit=0
	    end
	   # math_13_array[12]== check_digit
 # end
 # end 
 # end