def isbn_checker(book_number)
  remove_spaces_from_isbn
  remove_dashes_from_isbn
  length_verifier
end

def length_verifier(book_number)
  if book_number.length==10
    true
  elsif book_number.length==13
    true
  else
    false
  end
  end

def remove_dashes_from_isbn(book_number)
  if book_number.include?"-"
	book_number.delete!"-"
  end
  end

def remove_spaces_from_isbn(book_number)
  if book_number.include?" "
     book_number.delete!" "
  end
  end