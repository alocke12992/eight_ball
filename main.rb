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
    puts "1) Ask the Magic Eight Ball a question"
    puts "2) Add a custom response"
    puts "3) Reset to default responses"
    puts "4) View Responses"
    puts "5) Quit"
    choice = gets.to_i
    case choice
      
      when 1
        @answers.question_input
      when 2
        @answers.add_answer 
      when 3
        puts "The custom responses have been reset"
        @answers.reset
      when 4
        @answers.view
      when 5
        puts "GOODBYE, MORTAL".colorize(:red)
        `say "GOODBYE, MORTAL"`
        exit
      end
    end
  end

end

@m8 = Main.new
@m8.menu 