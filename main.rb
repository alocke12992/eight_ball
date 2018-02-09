# - Menu
#   - Question
#     - Random
#   - Exit
require_relative 'answers'
require 'colorize'

class Main

def initialize
  answers = @answers
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
      Answers.question_input
    when 2
      exit
    end
  end
end

end

menu