require_relative"isbn_kata.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

def test_for_ten_digits
assert_equal(true,isbn_checker(["1234567892"]))
assert_equal(false,isbn_checker(["123456789234"]))
assert_equal(true,isbn_checker(["1234567891"]))
end

def test_for_thirteen_digits
assert_equal(true,isbn_checker(["1234567891234"]))
assert_equal(false,isbn_checker(["152347689"]))
end

def test_for_removing_dashes_from_isbn
assert_equal(true,isbn_checker(["123-456-789-1"]))
end

def test_for_removing_spaces_from_isbn
assert_equal(true,isbn_checker(["987 654 321 9"]))
end

 def test_for_digits_of_10_formula
 assert_equal(false,isbn_checker(["123-123-123-1"]))
 end












end