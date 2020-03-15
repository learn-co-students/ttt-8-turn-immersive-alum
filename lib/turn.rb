def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    puts "hit"
    if (index < 0) || (index > 8)
        false
    elsif position_taken?(board, index)
        false
    else
        true
    end
end

def position_taken?(board, index)
    if board[index] == ""
        false
    elsif board[index] == " "
        false
    elsif board[index] == nil
        false
    else
        true
    end
end

def move(board, index, type)
    if valid_move?(board, index)
        board[index] = type
    else
        false
    end
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if move(board, index, "X")
        display_board(board)
    else
        while !move(board, index, "X")
            puts "Please enter 1-9:"
            input = gets.strip
            index = input_to_index(input)
        end
        display_board(board)
    end
end

def input_to_index(input)
    input.to_i - 1
end

