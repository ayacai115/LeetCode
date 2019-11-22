# Title: Valid Parentheses
# Problem URL: https://leetcode.com/problems/valid-parentheses/
# Solution URL: https://leetcode.com/problems/valid-parentheses/solution/

# Approach: Stacks

###############
# my solution
###############

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []

  s.split('').each do |char|
    if MAPPING.key?(char)
      top_element = stack.size > 0 ? stack.pop : '#'
      return false if MAPPING[char] != top_element
    else
      stack.push(char)
    end
  end
  stack.empty?
end

MAPPING = {
    ")" => "(",
    "}" => "{",
    "]" => "["
}
