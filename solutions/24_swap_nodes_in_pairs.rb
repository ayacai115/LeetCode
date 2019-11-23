# Title: 24. Swap Nodes in Pairs
# Problem URL: https://leetcode.com/problems/swap-nodes-in-pairs/
# Solution URL: none

# Approach: none

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

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  return [] if head.nil?

  @list = []
  node_to_array(head) if head

  @list.each_with_index { |node, i| @list[i - 1], @list[i] = @list[i], @list[i - 1] if i.odd? }
end

private

def node_to_array(node)
  @list << node.val
  return if node.next.nil?

  node_to_array(node.next)
end
