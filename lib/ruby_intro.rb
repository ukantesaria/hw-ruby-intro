# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) { |sum, elem| sum + elem } 
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  arr.combination(2).any? { |x,y|
    x + y == n
  }
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  vowel = "bcdfghjklmnpqrstvxz"
  vowel.each_char{ |alpha| 
    if s[0] == alpha || s[0] == alpha.upcase
      return true
    end
    }
  return false
end

def binary_multiple_of_4? s
  return false if s.empty?
  s.each_char{ |character|
      if character != "1" and character != "0"
        return false
      end}
  if s.to_i(2) % 4 == 0
    return true
  end
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn, price
      if isbn.empty? 
        raise ArgumentError 
      end
      if price <= 0 
        raise ArgumentError 
      end
      @price = price
      @isbn = isbn
  end

  def price_as_string
      str_to_print = "$#{format("%.2f", @price)}"
      return str_to_print
  end
end