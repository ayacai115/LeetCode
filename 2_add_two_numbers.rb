# Title: Add Two Numbers
# Problem URL: https://leetcode.com/problems/add-two-numbers

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

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
  array_1 = array_from_node(node: l1)
  array_2 = array_from_node(node: l2)

  sum = number_from_array(array: array_1) + number_from_array(array: array_2)
  sum.digits
end

def array_from_node(array: [], node: node)
  array << node.val
  if node.next
    array_from_node(array: array, node: node.next)
  else
    array
  end
end

def number_from_array(number: 0, array: array)
  unless array.empty?
    number = number * 10 + array[-1]
    array.pop
    number_from_array(number: number, array: array)
  else
    number
  end
end
