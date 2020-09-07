def turn(board)

  puts "Please enter 1-9:"
  temp = gets
  usermove = input_to_index(temp)
  if valid_move?(board, usermove) == true
    move(board, usermove, "X")
    display_board(board)
  else
    turn(board)
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end

end


def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  else
    false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  number = number.to_i - 1
end

def move(board, index, player = "X")
  def update_array_at_with(board, index, player)
    board[index] = player
  end
  update_array_at_with(board, index, player)

end
