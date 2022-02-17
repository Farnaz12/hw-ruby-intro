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
#O(n):
def max_2_sum arr
  max_2_sum = 0
  if arr.empty?
    return max_2_sum
  end
  if arr.length ==1 
    max_2_sum = arr[0]
    return max_2_sum
  end 
  if arr.length>1
    max1=arr.sort[arr.length-1]
    max2=arr.sort[arr.length-2]
    return max1+max2
  end
end
#-----------------------------------
def sum_to_n? arr, n
  hash_ = Hash.new
  i = arr.length - 1
  if i.zero?
    return false
  end
  while i >= 0
    if hash_.key?(n - arr[i])
      return true
    end
    hash_[arr[i]] = true
    i -= 1
  end
  return false
end
#without hashing: O(n^2)
# def sum_to_n? arr, n
#   sum = 0
#   i = 0
#   j = 0
#   #returns false if there is no two items in the array
#   if arr.length<=1  
#     return false
#   else
#     while i<arr.length 
#       j=i+1
#       while j<arr.length 
#         sum = arr[i]+arr[j]
#         if sum == n 
#           return true
#           elsif sum !=n && i==arr.length-2 
#           return false
#         end
#         j+=1
#       end
#       i+=1
#     end
#   end
# end
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