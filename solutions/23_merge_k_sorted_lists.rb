# Title: 23. Merge k Sorted Lists
# Problem URL: https://leetcode.com/problems/merge-k-sorted-lists/
# Solution URL: https://leetcode.com/problems/merge-k-sorted-lists/solution/

# Approach: Brute force

###############
# my solution
###############

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return [] if lists.empty?

  @result = []
  lists.each { |node| node_to_array(node) if node }

  @result.sort!
end

private

def node_to_array(node)
  @result << node.val
  return if node.next.nil?

  node_to_array(node.next)
end
