# https://www.theodinproject.com/lessons/ruby-sub-strings
#
# @param [String] string
# @param [Array<String>] dictionary
#
# @return [Hash]
#
def substrings(string, dictionary)
  string.downcase!
  result = Hash.new(0)

  for i in 0...dictionary.length
    word = dictionary[i]
    a = 0
    b = word.length - 1

    while b < string.length
      check_word = string[a..b]
      result[word] += 1 if check_word == word
      a += 1
      b += 1
    end
  end
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

#
# ?  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }
#
# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
#
# ? pseudocode:
# convert everything in the string to lowercase
# go through every dictionary one by one,
# loop (2nd) inside the string to search match, and count them
# use the 2 pointer style, with length of it being the dict's word's length
# if match, add to result
