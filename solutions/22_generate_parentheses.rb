# Title: 22. Generate Parentheses
# Problem URL: https://leetcode.com/problems/generate-parentheses/
# Solution URL: https://leetcode.com/problems/generate-parentheses/solution/

# Approach: Backtracking

###############
# my solution
###############

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  return [] if n.zero?

  @n = n
  @result = []

  backtrack('')
  @result
end

private

def backtrack(combination, left = 0, right = 0)
  if combination.size == @n * 2
    @result << combination
  else
    backtrack(combination + '(', left + 1, right) if left < @n
    backtrack(combination + ')', left, right + 1) if right < left
  end
end


