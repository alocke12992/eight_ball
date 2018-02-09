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
    puts "==========================="
    puts "======== Main Menu ========"
    puts "==========================="
    puts "1) Ask a question"
    puts "2) Quit"
    choice = gets.to_i
    case choice
      
      when 1
        @answers.question_input
      when 2
        exit
      end
    end
  end

end

@m8 = Main.new
@m8.menu 