def highest_product_attempt_one(array) 
  #Given an array_of_ints, find the highest product I can get from 3 of the integers.
  
  if array.length == 0 
    0
  elsif array.length == 1 
    array[0]
  elsif array.length == 2 
    array[0] * array[1]
  elsif array[0] <= array[1] && array[1] <= array[2]
    array[1] * array[2]
  elsif array[1] <= array[0] && array[0] <= array[2]
    array[0] * array[2]
  else
    array[0] * array[1]
  end
end # Here's a bug: highest_product_attempt_one([4,6,5]) returns 24. Let's try this:

def highest_product(array_of_ints) # Note: the maximum expected array length is 3
  sorted_array = array_of_ints.sort 
  
  if sorted_array.length == 0 
    0
  elsif sorted_array.length == 1 
    sorted_array[0]
  elsif sorted_array.length == 2 
    sorted_array[0] * sorted_array[1]
  else
    sorted_array[1] * sorted_array[2]
  end 
end