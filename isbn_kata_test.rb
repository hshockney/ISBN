require_relative"isbn_kata.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

def test_for_ten_digits
results=isbn_checker("1234567892")
assert_equal(true,results)
end





















end