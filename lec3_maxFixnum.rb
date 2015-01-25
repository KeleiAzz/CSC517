(1..64).each do |i|
  # puts i
  puts (2**i).class,i if (2**i).class == Bignum
end
