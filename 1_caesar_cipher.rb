# @param {String} string
# @param {Integer} offset
def caesar_cipher(string, offset)
  # 'A' to 'Z' is 65 - 90
  # 'a' to 'z' is 97 - 122
  result = ''

  string.each_char do |ch|
    gap = nil
    asc = ch.ord

    if asc >= 65 && asc <= 90 # capital alphabet
      gap = 65
    elsif asc >= 97 && asc <= 122 # lowercase alphabet
      gap = 97
    end

    unless gap
      result += ch
      next
    end

    val = ch.ord
    val -= gap
    val += offset
    val %= 26
    val += gap

    result += val.chr
  end
end

# create a loop that loops over each char in string
# determine if the ch is capital or not, and do 2 separate process:
# convert ch to their ascii value using .ord method
# if capital, minus the value by 65, else minus by 97
# after that, add offset to that value
# modulo the value by 26
# if capital, add 65, else add 97
# convert back to string using .chr method
# repeat the loop while saving the new string on a variable outside the loop

puts caesar_cipher('What a string!', 5)
