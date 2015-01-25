# array = [1, 2, 3, 4]
#
# array.collect! do |n|
#   n ** 2
# end
#
# puts array.inspect
class RandomSequence
  def initialize(limit,num)
    @limit,@num = limit,num
  end
  def each
    @num.times { yield (rand * @limit).floor }

  end
end

i = -1
RandomSequence.new(10,4).each do |num|
  i = num if i < num
  puts num
end

puts i