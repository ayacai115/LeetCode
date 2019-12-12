# Title: Two Sum
# Problem URL: https://leetcode.com/problems/two-sum/
# Solution URL: https://leetcode.com/problems/two-sum/solution/

# Approach: One-pass Hash Table

###############
# my solution
###############

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}

  0.upto(nums.size - 1) do |i|
    complement = target - nums[i]
    return [hash[complement], i] if (hash.key?(complement))
    hash[nums[i]] = i
  end
end

