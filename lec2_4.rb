module Factorial
  def factorial
    inject {|v, n| v*n}
  end
end

module Reducible
  def sum_reduce
    inject { |v, n| v+n }
  end
end
class Array
  include Factorial
  include Reducible
end
class Range
  include Factorial
end


puts [1, 2, 3, 4, 5].factorial
puts (1...5).factorial
puts [1, 2, 3, 4, 5].sum_reduce
# ('a' .. 'z').sum_reduce
#
# vf = VowelFinder.new
# ("The quick brown fox jumped over the lazy dog.")
# puts vf.sum_reduce

# puts factorial(5)