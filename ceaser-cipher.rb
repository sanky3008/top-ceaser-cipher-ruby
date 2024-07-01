def ceaser_cipher(string, shift)
  array = string.split('')
  ans = array.map() do |char|
    char_ascii = char.ord

    # is it a lowercase alphabet?
    if char_ascii <= 122 && char_ascii >= 97
      ans_ascii = char_ascii + shift

      # handle overflow
      if ans_ascii > 122
        ans_ascii = ans_ascii - 122 + 96
      end
    # is it an uppercase alphabet?
    elsif char_ascii <= 90 && char_ascii >= 65
      ans_ascii = char_ascii + shift

      # handle overflow
      if ans_ascii > 90
        ans_ascii = ans_ascii - 90 + 64
      end
    # we won't format any other type of characters
    else
      ans_ascii = char_ascii
    end

    # return the char associated with ans_ascii
    ans_ascii.chr
  end

  ans.reduce(''){|acc, item| acc += item}
end

string = gets.chomp
shift = (gets.chomp).to_i

puts ceaser_cipher(string, shift)
