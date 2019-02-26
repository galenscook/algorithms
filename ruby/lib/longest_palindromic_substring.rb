# @param {String} s
# @return {String}
# def longest_palindrome(s)
#   string_length = s.length
#   longest_sub = ''
#   longest_length = 0

#   starting_index = 0
#   ending_index = 0

#   while starting_index < string_length
#     while ending_index < string_length
#       sub = s[starting_index..ending_index]
#       length = ending_index - starting_index + 1
#       if is_palindrome?(sub) && length > longest_length
#         longest_sub = sub
#         longest_length = length
#       end
#       ending_index += 1
#     end
#     starting_index += 1
#     ending_index = 0
#   end

#   longest_sub
# end

'abbc'

# p = [
#   [true, false],
#   [true, true]
#   [true, false]
#   [true]
# ]

  # string_length = s.length
  # palindromes = []
  # longest_length = 1

  # i = 0
  # while i < string_length
  #   next_index = i + 1
  #   palindromes[i][i] = true

  #   if next_index < string_length - 1
  #     break
  #   elsif is_palindrome?(s[i..next_index])
  #     palindromes[i][next_index] = true
  #     longest_length = 2
  #   else
  #     palindromes[i][next_index] = false
  #   end

  #   i += 1
  # end

  # i = 0
  # while i < string_length

  # end


# 
def longest_palindrome(s)
  return s if is_palindrome?(s)
  palindrome_length = s.length - 1
  characters = s.split('')
  longest_substring = characters.first

  until palindrome_length == 1
    pal = characters.each_cons(palindrome_length).find { |sub| is_palindrome?(sub) }
    if pal
      longest_substring = pal.join
      break
    end
    palindrome_length -= 1
  end

  longest_substring
end

def is_palindrome?(string)
  string == string.reverse
end
