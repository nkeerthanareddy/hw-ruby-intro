# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  res=0
  #if the array is empty
  if arr.length==0
    return res
  end
  for i in arr
    res=res+i
  end
  return res
end

def max_2_sum arr
  # YOUR CODE HERE
  res=0
  #base cases: length=0 and length=1
  if arr.length==0
    return res
  end
  if arr.length==1
    return arr[0]
  end
  arr2=arr.sort
  #last 2 elements of sorted array
  return arr2[-1]+arr2[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  d={}
  for i in 0..(arr.length-1)
    #check if complement of i exists in d
    if d.key?(n-arr[i])
      return true
    end
    d[arr[i]] = n-arr[i]
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  arr=["a","e","i","o","u","A","E","I","O","U"]
  if arr.include? s.to_s[0]
    #first letter is vowel
    return false
  end
  if s.to_s[0]=~/[[:alpha:]]/
    return true
  else
    #first letter is not an alphabet
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  arr=["1","0"]
  if not arr.include? s.to_s[0]
    #not a binary string
    return false
  end
  s=s.to_i
  if not s.is_a? Integer
    return false
  end
  if s.to_i%4==0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  #class variables
  attr_accessor :isbn
  attr_accessor :price
  def initialize isbn,price
    @isbn=isbn
    @price=price
    if @price<=0 or @isbn.length==0
      raise ArgumentError
    end
  end
  def price_as_string
    t="#{'%.2f' %  @price}"
    return "$"+t
  end
end
