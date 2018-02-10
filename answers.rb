#TODO 
# create second array for user input
# merge those two arrays  
#Add the arrays

# create second array for user input 
# add the arrays 
# reset = clear the second array
require 'colorize'

class  Answers

  attr_accessor :response :combo :user_arr
#comment
  def initialize
    @combo = []

    @user_arr = []

    @user_arr = []
    @response = [ "It is certain",
    'It is decidedly so',
    'Without a doubt',
    'Yes definitely',
    'You may rely on it',
    'As I see it, yes',
    'Most likely',
    'Outlook good',
    'Yes',
    'Signs point to yes',
    'Reply hazy try again',
    'Ask again later',
    'Better not tell you now',
    'Cannot predict now',
    'Concentrate and ask again',
    'Don\'t count on it',
    'My reply is no',
    'My sources say no',
    'Outlook not so good',
    'Very doubtful',
    ] 

  end

  def question_input
    puts "I am the spooky Magic Eight Ball".colorize(:red)
    puts "ASK YOUR QUESTION, PEASANT".colorize(:red)
    question_input = gets.strip
    question_out
  end

  def question_out
    randomize = @combo.sample
    puts "#{randomize}".colorize(:red)
  end

  def add_answer
    puts "What response would you like to add?"
    user_input = gets.strip 
    @user_arr << user_input
  end 


  def question_out
    randomize = @combo.sample
    puts "#{randomize}".colorize(:red)
  end

  def add_answer
    puts "What response would you like to add?"
    user_input = gets.strip 
    @user_arr << user_input
  end 

  
def question_out
  randomize = @combo.sample
  puts "#{randomize}".colorize(:red)
end

def combo_array
  @combo = @user_arr + @response
  puts "Would you like to add another? (y/n)"
  choice = gets.to_i
  if choice == 'y'
    add_answer
  elsif choice == 'n'
  else
    puts "Invalid option."
    add_answer
  end
  puts "Would you like to view the question?"
end
end