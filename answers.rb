#TODO 
# create second array for user input
# merge those two arrays  
#Add the arrays

# create second array for user input 
# add the arrays 
# reset = clear the second array
require 'colorize'


class  Answers

  attr_accessor :response, :combo, :user_arr
#comment
  def initialize

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

    @combo = @user_arr + @response

  end

  def question_input
    puts "I am the spooky Magic Eight Ball".colorize(:red)
    `say "I am the spooky Magic Eight Ball"`
    puts "ASK YOUR QUESTION, PEASANT".colorize(:red)
    `say "ASK YOUR QUESTION, PEASANT"`
    question_input = gets.strip
    question_out
  end

  def question_out
    @combo
    randomize = @combo.sample
    puts "#{randomize}".colorize(:red)
    `say #{randomize}`
  end

  def add_answer
    puts "What response would you like to add?"
    user_input = gets.strip 
    @user_arr << user_input
    add_another
  end 


  def add_another
    puts "Would you like to add another? (y/n)"
    choice = gets.strip.downcase
    if choice == 'y'
      add_answer
    elsif choice == 'n'

    else
      puts "Invalid option."
      add_answer
    end
  end

  def view
    puts "Which of the MAGIC resonses would you like to view?"
    puts "1) Your Added responses"
    puts "2) Default responses"
    puts "3) All responses"
    puts "4) Main Menu"
    choice = gets.strip.to_i
    case choice 
      when 1 
        puts "Here are your custom responses:"
        puts @user_arr.each {|n| "n"}
      when 2  
        puts "Here are the default responses"
        puts @responses 
      when 3 
       puts "Here are all of the responses"
       puts @combo
      else 
        puts "Invalid response"
        view
    end
  end  
  def reset
    @user_arr = [] 
  end 

end