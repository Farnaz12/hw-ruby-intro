puts "Hello, World!"
#-----------------------------------
# Part 1
#-----------------------------------
def sum arr
  sum = 0
  if arr.empty?
    return sum
  end
  #else
  for i in arr
    sum+=i 
  end
  return sum
end
#-----------------------------------
def max_2_sum arr
  max_2_sum = 0
  if arr.empty?
    puts max_2_sum
  end
  if arr.length ==1 
    max_2_sum = arr[0]
    puts max_2_sum
  end 
  if arr.length>1
    max1=arr.sort[arr.length-1]
    max2=arr.sort[arr.length-2]
    puts max1+max2
  end
end
#-----------------------------------
def sum_to_n? arr, n
  hash_ = Hash.new
  i = arr.length - 1
  if i.zero?
    return false
  end
  while x >= 0
    if hash_.key?(n - arr[i])
      return true
    end
    hash_[arr[i]] = true
    i -= 1
  end
  return false
end
#-----------------------------------
# Part 2
#-----------------------------------
def hello(name)
 "Hello, #{name}"
end
#-----------------------------------
def starts_with_consonant? s
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end
#-----------------------------------
def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  if s.count('01') != s.size || s[-2,2] != "00"
    return false
  end
  return true
end
#-----------------------------------
# Part 3
#-----------------------------------
class BookInStock
  attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"not possible" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
#-----------------------------------