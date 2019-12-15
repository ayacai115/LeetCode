# Title: Unique Email Addresses
# Problem URL: https://leetcode.com/problems/unique-email-addresses/
# Solution URL: https://leetcode.com/problems/unique-email-addresses/solution/

# Approach: HashMap

###############
# my solution
###############

# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  hash = emails.group_by do |email|
    local, domain = email.split('@')
    local = local.delete('.').split('+').first

    "#{local}@#{domain}"
  end

  hash.keys.count
end
