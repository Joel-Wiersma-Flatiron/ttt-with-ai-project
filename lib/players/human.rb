class Human < Player
  
  def move
    puts "please enter a number 1-9 to place a piece on the board"
    input = gets.to_i
    Board.update(input, self)
    binding.pry
  end

end