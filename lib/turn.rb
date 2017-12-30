def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?
    if valid_move?
      move(board, index, character = "X")
      display_board(board)
    end
  end
end

def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n"
  print "-----------\n"
  print " #{board[3]} | #{board[4]} | #{board[5]} \n"
  print "-----------\n"
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if (index.between?(0,8) && !position_taken?(board, index))
    true
  else
    false
  end
end

def position_taken?(board, index)
  if  (board[index]== "" || board[index]== " " || board[index] == nil)
    false
  else
    true
  end
end

def move(board, index, character = "X")
  board[index] = character
  board
end
