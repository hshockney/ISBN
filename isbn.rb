require"csv"
def read_file_and_output
	file_handle=File.open("input_isbn_file.csv","r")
	file_name="isbn_output_test.csv"
	file_variable=File.open(file_name, "w")
	file_handle.each do |line|remove_dashes_from_isbn(line)|
	if @results==true
	file_variable.puts line.chomp + ",valid"
	else
	file_variable.puts line.chomp + ",invalid"
	end
	end
	file_handle.close
	file_variable.close

end


# def isbn_checker(isbn_number)
	# no_spaces_isbn = remove_spaces_from_isbn(isbn_number)
	# no_dashes_isbn = remove_dashes_from_isbn(no_spaces_isbn)
	# verify_length(no_dashes_isbn) 
	 # isbn_array=isbn_number_array(isbn_number)
	
	# check_digit_contains_X(isbn_array)
	# only_numeric_characters(isbn_array)
	 # if check_digit_10_is_valid(isbn_array)==true
	# @results=true
	
	# elsif check_digit_13_is_valid(isbn_array)==true
	# @results=true
	# else
	# @results=false
	# end
	
	
# end


def remove_dashes_from_isbn(isbn_number)
	if isbn_number.include?"-"
	isbn_number.delete!"-"
	else isbn_number
    end
remove_spaces_from_isbn(isbn_number)	
end
 

def remove_spaces_from_isbn(isbn_number)
    if isbn_number.include?" "
    isbn_number.delete!" " 
	else isbn_number	
	end
	verify_length(isbn_number)
end


def verify_length(isbn_number)
  if isbn_number.length==10
 
	isbn_number_array(isbn_number)
	check_digit_contains_X(isbn_number_array)
	only_numeric_characters(isbn_number_array)
	check_digit_10_is_valid(isbn_number_array)
  elsif isbn_number.length==13
  
  isbn_number_array(isbn_number)
  check_digit_contains_X(isbn_number_array)
  only_numeric_characters(isbn_number_array)
  check_digit_13_is_valid(isbn_number_array)
  
  else
   false
  end
  isbn_number_array(isbn_number)
end



	

def isbn_number_array(isbn_number)
	isbn_number_array=isbn_number.split(//)
	check_digit_contains_X(isbn_number_array)
	end

	
def check_digit_contains_X(isbn_number_array)


	if isbn_number_array[9] == "x" or isbn_number_array[9] == "X"
	isbn_number_array[9] = 10
	
	end
	
isbn_number_array[9] == 10
only_numeric_characters(isbn_number_array)
end
def only_numeric_characters(isbn_number_array)
	if isbn_number_array =~ /\D/ 
	true
	else
	false
	end
check_digit_10_is_valid(isbn_number_array)
end






	
def check_digit_10_is_valid(isbn_number_array)
array =[]

	isbn_number_array.each do |value|
	array << value.to_i 
	end
	

sum = 0

	array.each.with_index do |value, index|
	break if index == 9
	sum += value * (index + 1)
	end

check_digit = sum%11

	if check_digit == array[9]
	@results=true
	else
	@results=false
	end
	
check_digit == array[9]
check_digit_13_is_valid(isbn_number_array)
end

def check_digit_13_is_valid(isbn_number_array)
 
array_13=[]
  isbn_number_array.each do |value|
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
		end	
end		
	  sum= sum %10
	  check_digit=(10-sum)
	
	    if check_digit==10
	    check_digit=0
	    end
	if	array_13[12]==check_digit
	@results=true
	else
	@results=false
	end
		
		end

read_file_and_output