# # https://www.theodinproject.com/lessons/ruby-bubble-sort

# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# -----------------------------------------------------------------

#
#
# @param [Array<Integer>] arr
#
def bubble_sort(arr)
  iteration = 1
  sorted = false

  until sorted
    sorted = true

    for i in 0...(arr.length - iteration)
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
    iteration += 1
  end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
