require_relative"isbn_take_2.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

  def test_for_ten_digits
  assert_equal(true,ISBN_main_function("1234567892"))
  assert_equal(false,ISBN_main_function("123456789234"))
  assert_equal(true,ISBN_main_function("1234567891"))
  end

  def test_for_thirteen_digits
  assert_equal(true,ISBN_main_function("1234567891234"))
  assert_equal(false,ISBN_main_function("152347689"))
  end

  def test_for_removing_dashes_from_isbn
  assert_equal(true,ISBN_main_function("123-456-789-1"))
  end

  def test_for_removing_spaces_from_isbn
  assert_equal(true,ISBN_main_function("987 654 321 9"))
  end

   def test_for_digits_of_10_formula
   assert_equal(false,ISBN_main_function(["0321146530"]))
    assert_equal(true,ISBN_main_function(["0471958697"])) 
	
  end
  
   def test_string_convert_to_array
   assert_equal(["1","2","3","3","2","1","4","5","6","7"],convert_string_to_array("1233214567"))
   end

   # def test_for_thirteen_digit_math
     # assert_equal(false,ISBN_main_function(["4780470059029"]))
     # assert_equal(true,ISBN_main_function(["978-0-13-149505-0"]))
   # end

 # def test_to_check_if_check_digit_10_X
 # assert_equal(true,ISBN_main_function(["877195869X"]))
 # assert_equal(false,ISBN_main_function(["877195X869"]))
 # end









end