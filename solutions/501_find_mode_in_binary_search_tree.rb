# Title: 501. Find Mode in Binary Search Tree
# Problem URL: https://leetcode.com/problems/find-mode-in-binary-search-tree/
# Solution URL: none

# Approach: Backtracking

###############
# my solution
###############

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def find_mode(root)
  return [] if root.nil?
  @hash = Hash.new(0)

  backtracking(root)
  max = @hash.values.max

  @hash.select { |_k, v| v == max }.keys
end

private

def backtracking(root)
  return unless root

  @hash[root.val] += 1
  backtracking(root.right) if root.right
  backtracking(root.left) if root.left
end
