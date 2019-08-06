
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  index >= 0 && index < board.length && board[index].upcase != "X" && board[index].upcase != "O"
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  index = nil
  loop do
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    if valid_move?(board, index)
      break
    end
  end
  move(board, index)
  display_board(board)
end
