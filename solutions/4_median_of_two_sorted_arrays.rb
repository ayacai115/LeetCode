# Title: 4. Median of Two Sorted Arrays
# Problem URL: https://leetcode.com/problems/median-of-two-sorted-arrays
# Solution URL: https://leetcode.com/problems/median-of-two-sorted-arrays/discuss/419690/ruby-accepted-answer-56ms

###############
# my solution
###############

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  sorted_array = (nums1 + nums2).sort
  array_size = sorted_array.size

  if array_size.even?
    medians = []
    medians << sorted_array[array_size / 2 -1]
    medians << sorted_array[array_size / 2]
    medians.sum.to_f / 2
  else
    sorted_array[(array_size / 2).round(half: :up)]
  end
end
