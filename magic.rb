require_relative 'answers'
require 'colorize'
require 'pry'

class Magic 
attr_accessor :answers 

  def initialize
    @answers_magic = Answers.new
  end

  def menu_easter_egg
    puts "===============================".colorize(:red)
    print "=========".colorize(:red) 
    print " Welcome to ".colorize(:white)
    puts "==========".colorize(:red)
    print "=====".colorize(:red) 
    print " The Magic EightBall ".colorize(:white)
    puts "=====".colorize(:red)
    puts "===============================".colorize(:red)
    puts "1) Ask the Magic Eight Ball a question"
    puts "2) Settings" 
    puts "3) Quit"
    
    choice = gets.to_i
    if choice == 1
        @answers_magic.question_input
    elsif choice == 1
        @answers_magic.settings
     elsif choice == 1
        puts "GOODBYE, MORTAL".colorize(:red)
        exit
     end
    
  end
  
end 
