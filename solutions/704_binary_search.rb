# Title: 704. Binary Search
# Problem URL: https://leetcode.com/problems/binary-search/
# Solution URL: https://leetcode.com/problems/binary-search/solution/

# Approach: Binary Search

###############
# my solution
###############

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0
  right = nums.size - 1

  index = while left <= right
            pivot = left + (right - left) / 2
            return pivot if nums[pivot] == target

            if target < nums[pivot]
              right = pivot -1
            else
              left = pivot + 1
            end
          end

  return -1 if index.nil?
  index
end
