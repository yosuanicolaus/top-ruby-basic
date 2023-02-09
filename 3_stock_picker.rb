# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

# Quick Tips:

#   You need to buy before you can sell
#   Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

# ? Pseudocode:
# Remember the "Best Day to Buy and Sell" Leetcode Problem (easy)
# Sliding window / two pointer technique
# create 'highest' variable to save the highest return
# create 2 pointer, a and b, with default value 0 and 1
# while b < prices.length, check the price return
# if b > a, no point to check. make a = b to get the lowest point for a
# whenever found higher than 'highest', update highest

#
# @param [Array<Integer>] prices <description>
#
# @return [Array<Integer>] <description>
#
def stock_picker(prices)
  highest = 0
  day1 = 0
  day2 = 0
  a = 0
  b = 1

  while b < prices.length
    if prices[a] > prices[b]
      a = b
      b += 1
      next
    end

    profit = prices[b] - prices[a]
    if profit > highest
      highest = [profit, highest].max
      day1 = a
      day2 = b
    end

    b += 1
  end

  [day1, day2]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
