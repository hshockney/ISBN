require_relative"isbn_kata.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

def test_for_ten_digits
assert_equal(true,length_verifier("1234567892"))
assert_equal(false,length_verifier("123456789234"))
assert_equal(true,length_verifier("1234567891"))
end

def test_for_thirteen_digits
assert_equal(true,length_verifier("1234567891234"))
assert_equal(false,length_verifier("152347689"))
end

 def test_for_removing_dashes_from_isbn
 assert_equal("1234567891",remove_dashes_from_isbn("123-456-789-1"))
 end

 def test_for_removing_spaces_from_isbn
 assert_equal("9876543219",remove_spaces_from_isbn("987 654 321 9"))
 end

   def test_for_digits_of_10_formula
   results=isbn_checker("1231231231")
   assert_equal(false,results)
   end

def test_string_convert_to_array
assert_equal(["1","2","3","3","2","1","4","5","6","7"],book_number_array("1233214567"))
end











end