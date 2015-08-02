require 'pry'

def my_select(array)
  counter = 0
  new_array = []
#we put in an array and add a counter... the following process
#will occur until the array length is larger than the counter
  while counter < array.length 
    new_array << array[counter] if yield array[counter] 
#block will CHECK true and false but RETURN a value
    counter += 1 
  end
  new_array
end


#yield == true => true 