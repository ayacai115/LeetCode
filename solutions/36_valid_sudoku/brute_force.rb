# Title: 36. Valid Sudoku
# Problem URL: https://leetcode.com/problems/valid-sudoku/
# Solution URL: https://leetcode.com/problems/valid-sudoku/solution/

# Approach: Brute Force

###############
# my solution
###############

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  @board = board

  @board.each do |row|
    row.map! { |e| e.to_i if e.to_i > 0 }
  end

  return false unless valid_rows?
  return false unless valid_columns?
  valid_boxes?
end

private

def valid_rows?
  @board.all? { |row| valid_set?(row) }
end

def valid_columns?
  0.upto(9).all? do |i|
    column = []
    @board.each { |row| column << row[i] }
    valid_set?(column)
  end
end

def valid_boxes?
  [0, 3, 6].all? do |j|
    [0, 3, 6].all? do |k|
      box = []
      box << @board[j][k]
      box << @board[j + 1][k]
      box << @board[j + 1][k + 1]
      box << @board[j + 1][k + 2]
      box << @board[j + 2][k]
      box << @board[j + 2][k + 1]
      box << @board[j + 2][k + 2]
      box << @board[j][k + 1]
      box << @board[j][k + 2]
      valid_set?(box)
    end
  end
end

def valid_set?(set)
  return false if set.compact.any? { |num| num < 1 || num > 9 || set.count(num) > 1 }
  true
end
