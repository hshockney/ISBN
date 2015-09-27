require_relative"isbn.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

def test_for_valid_amount_of_digits
	assert_equal(true,verify_length("2471958697"))
	assert_equal(false,verify_length("10293847570"))
	assert_equal(true,verify_length("0-321-14653-0"))
end


def test_removes_dashes_from_isbn
	assert_equal("0321146530",remove_dashes_from_isbn("0-321-14653-0"))
	end

def test_removes_spaces_from_isbn_number
	assert_equal("0321146530",remove_spaces_from_isbn("0 321 14653 0"))
	end

def test_for_string_coversion
	assert_equal(["3","4","5","7","6","5","5","6","7"],isbn_number_array("345765567"))
	end

def test_for_check_digit_10
	assert_equal(true, check_digit_10_is_valid(["0","3","0","6","4","0","6","1","5","2"]))
	assert_equal(false, check_digit_10_is_valid([1,2,4,6,7,8,9,0,9,9]))
	assert_equal(true, check_digit_10_is_valid([0,3,2,1,1,4,6,5,3,0]))
	end
	
 

def test_for_x
	assert_equal(true, check_digit_contains_X("080442957X"))
	end

	
def test_for_check_digit_13
	assert_equal(false, check_digit_13_is_valid("9780470009029"))
	assert_equal(true, check_digit_13_is_valid("9780470059029"))
	
	end


	
	
	
	
	
	
end