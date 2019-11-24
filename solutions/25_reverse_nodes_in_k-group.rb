# Title: 25. Reverse Nodes in k-Group
# Problem URL: https://leetcode.com/problems/reverse-nodes-in-k-group/
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
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
  return [] if head.nil?

  @array = Array.new(0)
  list_to_array(head)

  i = 0
  while (i + k) <= @array.size do
    part = @array[i..(i + k - 1)].reverse
    @array[i..(i + k - 1)] = part

    i += k
  end
  @array
end

private

def list_to_array(head)
  @array << head.val

  return if head.next.nil?
  list_to_array(head.next)
end
