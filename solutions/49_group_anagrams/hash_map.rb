# Title: Group Anagrams
# Problem URL: https://leetcode.com/problems/group-anagrams/
# Solution URL: https://leetcode.com/problems/group-anagrams/solution/

# Approach: HashMap

###############
# my solution
###############

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  strs.group_by { |s| s.chars.sort }.values
end
