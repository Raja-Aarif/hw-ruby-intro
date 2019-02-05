# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.length==0 #returns 0 if array is empty
  total =0
  arr.each do |i|
    total+=i    #adding up all elements of array
  end
  return total
end


def max_2_sum(array)
  return 0 if array.length ==0  #returns 0 if the array is empty  
  return array[0] if array.length ==1 #returns element if  there is only one element
  largest1 =largest2= -(1)*Float::INFINITY #largest1  is largest  and largest2 is the  2nd largest
  array.each do |i|
    if i> largest1   # checks if array element is greater than largest1 
      largest2= largest1
      largest1= i
    elsif i>largest2  #checks if array element is greater than largest2 (but less than largest1 as elsif)
      largest2= i
    end
  end
  return largest1+largest2
end



def sum_to_n?(arr, n)
  map = {}
  arr.each_with_index do|i,index|
    return true if map[n-i] # checks if the n-i is already encountered in the loop
    map[i] = index   #mapping each element to index
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, '+ name #concatenating to get the result
end

def starts_with_consonant? s
  #Below regex checks if the string starts with an alpahabet and is a consonant
  if /^(?=[A-Za-z])(?=[^aeiouAEIOU])/.match(s) == nil  
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # belwo regex for checking if the string is valid binary
  if /^[01]+$/.match(s) == nil
    return false
  #for multple of 4, the last two bits must be 0 which is implemented below
  elsif s[s.length-1]=='0'  && s[s.length-2]=='0'
    return true
  else
    return false
  end
end


# Part 3

class BookInStock
  #constructor function implemented below
  def initialize(isbn_no,cost)
    raise ArgumentError.new('Not a Valid ISBN number') if isbn_no.size == 0 
    raise ArgumentError.new('Cost should be a positive value') if cost<=0
    
    @isbn = isbn_no
    @price = cost
  end
  
  #getter funtion for isbn below
  def isbn
    return @isbn
  end
  
  #getter funtion for  price below
  def price
    return @price  
  end
  
  #setter function for isbn
  def isbn=(a)
    @isbn = a
  end
  
  #setter funcion for price
  def price=(p)
    @price = p
  end
  
  
  def price_as_string()
    # rounding the price to two decimals and concatenatig dollar 
    return "$"+ "%.2f" % @price  
  end

end
