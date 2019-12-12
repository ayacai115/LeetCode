# Title: Two Sum
# Problem URL: https://leetcode.com/problems/two-sum/
# Solution URL: https://leetcode.com/problems/two-sum/solution/

# Approach: Two-pass Hash Table

###############
# my solution
###############

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = nums.map.with_index { |num, i| [num, i] }.to_h

  0.upto(nums.size - 1) do |i|
    complement = target - nums[i]
    return [i, hash[complement]] if hash.key?(complement) && hash[complement] != i
  end
end
