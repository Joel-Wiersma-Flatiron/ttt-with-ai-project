class Board
  
  attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(cell)
    @cells[cell.to_i - 1]
  end

  def full?
    @cells.each do |cell|
      if cell == " "
        return false
      end
    end
  return true
  end

  def turn_count
    @cells.count{|cell| cell == "X" || cell == "O"}
  end

  def taken?(cell)
    return false if @cells[cell.to_i - 1] == " "
    return true
  end

  def valid_move?(cell)
    return false if taken?(cell) || cell.to_i <= 0
    return true
  end

  def update(cell, player)
    @cells[cell.to_i - 1] = player.token if valid_move?(cell)
  end
end