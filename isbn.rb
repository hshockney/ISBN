def isbn_checker(isbn_number)
no_spaces_isbn = remove_spaces_from_isbn(isbn_number)
no_dashes_isbn = remove_dashes_from_isbn(no_spaces_isbn)
if verify_length(no_dashes_isbn) == true 
	isbn_array=isbn_number_array(isbn_number)
	check_digit_10_is_valid(isbn_array)
	elsif
	isbn_array.length==13
	check_digit_13_is_valid(isbn_array)
else 
	false
end
end



def verify_length(isbn_number)
  if isbn_number.length==10
    true
  elsif isbn_number.length==13
  true
  else
    false
  end
end


def remove_dashes_from_isbn(isbn_number)
  if isbn_number.include?"-"
	 isbn_number.delete!"-"
	 
else isbn_number
	  end
	  end
  

def remove_spaces_from_isbn(isbn_number)
  if isbn_number.include?" "
     isbn_number.delete!" " 
	 else isbn_number	
	end
	end
	

def isbn_number_array(isbn_number)
	isbn_number_array=isbn_number.split(//,)
	end

	
def check_digit_contains_X(isbn)
isbn_number = isbn.split ""

	if isbn_number[9] == "x" or isbn_number[9] == "X"
	isbn_number[9] = 10
	end
	
isbn_number[9] == 10
check_digit_10_is_valid(isbn_number)
end

	
def check_digit_10_is_valid(isbn)
array =[]

	isbn.each do |value|
	array << value.to_i 
	end
	

sum = 0

	array.each.with_index do |value, index|
	break if index == 9
	sum += value * (index + 1)
	end

check_digit = sum%11

	if check_digit == array[9]
	true
	else
	false
	end
	
check_digit == array[9]
end
def check_digit_13_is_valid(isbn)
 isbn_number = isbn.split ""
array_13=[]
  isbn_number.each do |value|
  array_13 << value.to_i
  end
  sum=0
  check_digit=0
  array_13.each_with_index do |value,index|
  
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
		array_13[12]==check_digit
		
		end
		end
		end