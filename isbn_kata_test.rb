require_relative"isbn_kata.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

def test_for_ten_digits
assert_equal(true,length_verifier("1234567892"))
assert_equal(false,length_verifier("123456789234"))
assert_equal(true,length_verifier("123 456 789 1"))
end

def test_for_thirteen_digits
assert_equal(true,length_verifier("1234567891234"))
assert_equal(false,length_verifier("152347689"))
end

def test_for_removing_dashes
assert_equal("1234567891",remove_dashes_from_isbn("123-456-789-1"))
end





















end