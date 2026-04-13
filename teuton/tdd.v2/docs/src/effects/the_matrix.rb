#!/usr/bin/env ruby
require "pastel"

trap("SIGINT") do
  puts "\033[2J"

  puts "Morpheus: 'Follow me.'"
  exit!
end

class Matrix
  def initialize(text)
    @pastel = Pastel.new
    @eligible_chars = "ª\|@·#$~%&/\¿¸^*¨;•:·_-+'.,".chars + ['.', ' ']
    @height, @width = `stty size`.split.map { _1.to_i }

    filename = File.join(File.dirname(__FILE__), "title.txt")
    @title = File.readlines(filename)
  end

  def call
    clear_screen.call

    chars = {}
    loop do
      chars[rand(@width)] = 0

      chars.each do |col, row|
        chars[col] += 1 # increment row value
        print_random_at(row, col)
      end
      print_char_at_ramdom("•")
      title
      sleep 0.1
    end
  end

  private

  def clear_screen = -> { puts "\033[2J" }

  def print_random_at(row, col) 
    print "\033[#{row + 1};#{col}H" # move cursor down (row + 1)
    # print random character
    if rand > 0.3
      print @pastel.green("#{@eligible_chars.sample} ")
    else
      print @pastel.green.bold("#{@eligible_chars.sample} ")
    end
    print "\033[0;0H" # move cursor to top/left position
  end

  def print_text_at(row, col, text) 
    print "\033[#{row + 1};#{col}H"
    print @pastel.white(text)
    print "\033[0;0H"
  end

  def print_char_at_ramdom(char)
    return if rand > 0.2

    row = rand(@height)
    col = rand(@width)
    print "\033[#{row + 1};#{col}H"
    print @pastel.white(char)
    print "\033[0;0H"
  end

  def title
    lines = @title
    row = (@height / 2) - (lines.size / 2)
    col = (@width / 2) - (lines.first.length / 2)
  
    lines.each_with_index do |text, index|
      print "\033[#{row + 1 + index};#{col}H"
      print @pastel.white.bold(text)
      print "\033[0;0H"
    end

    header = " Agile & Craftsmanship Canarias "
    hour = " #{Time.now} "
    print_text_at(1, @width - header.length - 1, header)
    print_text_at(2, @width - hour.length - 1, hour)
  end
end

matrix = Matrix.new('TDD test de infraestructura Teuton')
matrix.call
