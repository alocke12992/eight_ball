# - Menu
#   - Question
#     - Random
#   - Exit
require_relative 'answers'
require 'colorize'
require 'pry'

class Main
  
  def initialize
    @answers = Answers.new
  end

  def menu
    while true
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
    case choice
      
      when 1
        @answers.question_input
      when 2
        @answers.settings
      when 3
        puts "GOODBYE, MORTAL".colorize(:red)
        exit
      end
    end
  end

end

@m8 = Main.new
@m8.menu 