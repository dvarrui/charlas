#!/usr/bin/env ruby
require "pastel"


# trap("SIGINT") do
#  clear_screen.call
#
#  puts "Morpheus: 'Follow me.'"
#  exit!
# end

class Matrix
  def initialize(text)
    @pastel = Pastel.new
    @eligible_chars = 'TDD test de infraestructura Teuton'.chars + ['.', ' ', '@']
    @width = `stty size`.scan(/\d+/)[1].to_i # terminal width
  end

  def at(row, col)
  
    print "\033[#{row + 1};#{col}H" # move cursor down (row + 1)
    # print random character
    if rand > 0.3
      print @pastel.green("#{@eligible_chars.sample} ")
    else
      print @pastel.green.bold("#{@eligible_chars.sample} ")
    end
    print "\033[0;0H"                  # move cursor to top/left position
  end

  def call
    clear_screen.call

    chars = {}
    loop do
      chars[rand(@width)] = 0

      chars.each do |col, row|
        chars[col] += 1 # increment row value
        at(row, col)
      end
      title
      sleep 0.1
    end
  end

  def clear_screen = -> { puts "\033[2J" }

  def title
    text = "I love Ruby!"
    row = 10
    col = (@width / 2) - (text.length / 2)
  
    print "\033[#{row + 1};#{col}H"
    print @pastel.white.bold(text)
    print "\033[0;0H"
  end
end

matrix = Matrix.new('TDD test de infraestructura Teuton')
matrix.call
