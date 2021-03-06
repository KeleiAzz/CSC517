class Roman
  DIGITS = {
      'I' => 1,    'V' => 5,    'X' => 10,    'L' => 50,
      'C' => 100,  'D' => 500,  'M' => 1000,
  }

  def roman_to_integer(roman_string)
    prev = nil
    roman_string.to_s.upcase.split(//).reverse.inject(0) do
    |running_sum, digit|
      if digit_value = DIGITS[digit]
        # puts digit_value
        # puts prev && prev > digit_value
        if prev && prev > digit_value
          running_sum -= digit_value
        else
          running_sum += digit_value
        end
        prev = digit_value
      end
      running_sum
    end
  end

  def method_missing(method)
    str = method.id2name
    roman_to_integer(str)
  end
end

# puts Roman.new.roman_to_integer("md")
puts Roman.new.xlix