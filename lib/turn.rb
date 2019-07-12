def valid_move?(board, index)
 if index.between?(0,8) && !position_taken?(board, index)
   return true
 else
   return false
 end
end

def position_taken?(board, index)
  if board[index] != "" && board[index] != " " && board[index] != nil
    return true
  else
    return false
  end
end

def display_board (board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index (user_input)
 user_input.to_i - 1
end

def move (board, index, token = "X")
 board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_index = gets
  input = input_to_index(user_index)
  if !valid_move?(board, input)
    puts "Please enter 1-9:"
  else
    move(board, input, token = "X")
    display_board(board)
  end
end
