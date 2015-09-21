require_relative"isbn_kata.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

def test_for_ten_digits
assert_equal(true,isbn_checker("1234567892"))
assert_equal(false,isbn_checker("123456789234"))
end

def test_for_thirteen_digits
assert_equal(true,isbn_checker("1234567891234"))
assert_equal(false,isbn_checker("152347689"))
end





















end