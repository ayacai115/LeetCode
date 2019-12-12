# Title: Two Sum
# Problem URL: https://leetcode.com/problems/two-sum/
# Solution URL: https://leetcode.com/problems/two-sum/solution/

# Approach: Brute Force

###############
# my solution
###############

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  last_index = nums.size - 1

  0.upto(last_index) do |i_1|
    (i_1 + 1).upto(last_index) do |i_2|
      return [i_1, i_2] if nums[i_1] + nums[i_2] == target
    end
  end
end
