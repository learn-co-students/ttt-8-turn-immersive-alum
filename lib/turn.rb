def position_taken?(board, index)
  if board[index] !~ /[^[:space:]]/
    return false;
  end

  return true
end

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0,8)
    return false
  end
  return true
end

def input_to_index(arg)
    if !!(arg =~ /\A[-+]?[0-9]+\z/) || arg == 0
        arg = arg.to_i
        if arg > 0
            arg = arg - 1
        else
            arg
        end
    else
        arg = -1
    end
end


def move (board, position, choice = "X")
  board[position] = choice
  return board
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
