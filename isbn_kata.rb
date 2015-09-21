def isbn_checker(book_number)
  if book_number.length==10
    true
  elsif book_number.length==13
    true
  else
    false

  end
end