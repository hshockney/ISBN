require_relative"isbn.rb"
require'csv'

def read_file_and_output
	file_handle=File.open("input_isbn_file.csv","r")
	file_name="isbn_output_test.csv"
	file_variable=File.open(file_name, "w")
	file_handle.each do |line|remove_dashes_from_isbn(line)|
	if @results==true
	file_variable.puts line.chomp + ",valid"
	else
	file_variable.puts line.chomp + ",invalid"
	end
	end
	file_handle.close
	file_variable.close
	
end

read_file_and_output