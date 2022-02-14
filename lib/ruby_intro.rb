# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0 
    return 0
  end
  add = 0
  for i in arr
    add = add + i
  end
  return add
end

def max_2_sum arr
  if arr.length == 0 
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  if arr == []
  	return false
  end
  for x in 0...arr.length
  	for y in (x + 1)...arr.length
  	  sum = arr[x] + arr[y]
  		if sum == n
  			return true
  		end
  	end
  end
  
  return false
end

# Part 2

def hello(name)
  return 'Hello, '+name
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end


def binary_multiple_of_4?(s)
    if s == "0"
      return true
    elsif /[a-zA-Z^$3-9*]/.match(s)
      return false
    else
      if /^[10]*00$/.match(s) and s.to_i % 4 == 0
        return true
      else
        return false
      end
    end
end



# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.size ==0 or price <=0
      raise ArgumentError, "Invalid arguments"
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%0.2f",@price)
  end
end