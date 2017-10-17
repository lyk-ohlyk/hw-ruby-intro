# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0;
  for n in arr
    total += n
  end
  return total;
end

def max_2_sum arr
  sum = 0
  max1 = arr[0]
  max1_index = 0
  if arr.size == 0
    return 0
  end
  
  for i in 0..arr.size-1
    if arr[i] >= max1
      max1 = arr[i]
      max1_index = i
    end
  end
  if arr.size == 1
    return max1
  end
    
  max2 = arr[i-1]
  for i in 0..arr.size-1
    if arr[i] >= max2 && i != max1_index
      max2 = arr[i]
    end
  end
  
  sum = max1 + max2
  return sum
  
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size < 2
    return false  
  end
  
  sum = 0
  for i in 0..arr.size-1
    for j in i+1..arr.size-1
      sum = arr[i] + arr[j]
      puts sum
      if sum == n
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.size == 0)
    return false
  end
  if !((s[0] >= "a" && s[0] <="z") || (s[0] >= "A" && s[0] <= "Z"))
    return false
  end
  
  vocab = ["a","e","i","o","u","A","E","I","O","U"];
  for consonant in vocab
    if s[0] == consonant
      return false
    end
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  dex = 0;
  if s.size == 0
    return false
  end
  
  for i in 0..s.size-1
    c = s[i]
    if c != "0" &&c != "1"
      return false
    end
    dex += c.to_i * 2**(s.size-1-i)
  end
  if dex % 4 == 0
    return true
  else
    return false
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
@@isbn = ""
@@price = 0.0
attr_accessor :isbn
attr_accessor :price
def initialize(newisbn = "1-1-1", newprice = 0.0) # initialize 方法
  if newisbn == "" 
    raise ArgumentError, "empty isbn"
  end
  if newprice <= 0
    raise ArgumentError, "wrong price"
  end
  @isbn = newisbn
  @price = newprice
end

def price_as_string
  return "$" + sprintf("%.2f",price)
end

end
