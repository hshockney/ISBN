require_relative"isbn.rb"
require"minitest/autorun"
 
class Isbn_verify<Minitest::Test  

 def test_for_valid_amount_of_digits1
	assert_equal(true,verify_length("1234567890"))
end
 
 def test_for_valid_amount_of_digits2
	assert_equal(false,verify_length("134689763"))
end

 def test_for_valid_amount_of_digits3
	assert_equal(true,verify_length("0321146530987"))
 end
 
 
 def test_removes_dashes_from_isbn
	assert_equal("0321146530",remove_dashes_and_spaces_from_isbn("0-321-14653-0"))
   end


 def test_to_remove_spaces
     assert_equal("1234567890", remove_dashes_and_spaces_from_isbn("123 4567 890"))
     assert_equal("1237362781", remove_dashes_and_spaces_from_isbn("123 7362 781"))
 end 

 def test_with_spaces_and_hyphens
     assert_equal("1234567890", remove_dashes_and_spaces_from_isbn("1 2-3-4-5678-9 0"))
 end

 def test_with_no_dashes_and_spaces_after_removal
 assert_equal("1234567890", remove_dashes_and_spaces_from_isbn("1234567890"))
 end
 
 
 
 
def test_input_string_is_a_valid_isbn1
    
	assert_equal(false,valid_isbn?("0471958698"))
end

def test_input_string_is_a_valid_isbn2
    assert_equal(true,valid_isbn?("0 4 7-1958697"))
end

def test_input_string_is_a_valid_isbn3
    assert_equal(true,valid_isbn?("0471958697"))
    
end

def test_input_string_is_a_valid_isbn4
    assert_equal(false,valid_isbn?("1471958697"))
    
end

  def test_for_X_in_ISBN1
     assert_equal(true,valid_isbn?("877195869x"))
	
  end
 
 def test_for_X_in_ISBN2
	 assert_equal("1234555781", change_check_digit_from_X_to_10("1234555781"))
  end
 
 def test_for_x_in_isbn_3
	 assert_equal("877195x869", change_check_digit_from_X_to_10("877195x869"))
 end

 def test_update_x_in_check_digit_position
	assert_equal("87719586910", change_check_digit_from_X_to_10("877195869x"))
 end
 
 def test_valid_isbn_with_x_in_middle
	assert_equal(false, valid_isbn?("8771958x69"))
	end
 def test_valid_isbn_with_x_in_middle2
	assert_equal(false, valid_isbn?("877195x869"))
	end
 
  def test_for_non_numeric_characters1
	 assert_equal(false, test_for_numeric_characters("abd123def1230"))
  end

   def test_for_non_numeric_characters2
	 assert_equal(true, test_for_numeric_characters("0471958697"))
	
  end
 
   def test_for_non_numeric_characters3
	 assert_equal(true, test_for_numeric_characters("9780470059029"))
	
  end
 
   def test_for_non_numeric_characters4
	 assert_equal(false, test_for_numeric_characters("47804700590b"))
	
  end
   def test_for_check_digit_101
	  assert_equal(true, valid_isbn?("877195869x"))
	
   end
  
 def test_for_check_digit_102
	
	 assert_equal(false, valid_isbn?("1246789099"))
	
  end
 
  def test_for_check_digit_103
	
	assert_equal(true, valid_isbn?("0321146530"))
  end
 
   def test_for_thirteen_character_math1
     assert_equal(true, valid_isbn?("9780470059029"))

    end 
  
  def test_for_thirteen_character_math2
    
      assert_equal(false, valid_isbn?("9780470009029"))

    end 
   
  def test_for_thirteen_character_math3

      assert_equal(false, valid_isbn?("1345678911112"))

    end 
   
   def test_for_thirteen_character_math4

    assert_equal(true, valid_isbn?("9780470059029"))
    end 
  
  
end