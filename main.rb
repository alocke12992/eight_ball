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
    puts "2) Add an answer"
    puts "3) Reset to default answers"
    puts "4) Quit"
    choice = gets.to_i
    case choice
      
      when 1
        @answers.question_input
      when 2
#        addanswersplaceholder
      when 3
#        resetanswersplaceholder
      when 4
        puts "GOODBYE, MORTAL".colorize(:red)
        exit
      end
    end
  end

end

@m8 = Main.new
@m8.menu 