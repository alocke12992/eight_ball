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
    @easter_egg = "Magic"
    @user_arr = []
    @response = [ "It is certain",
    'It is decidedly so',
    'Without a doubt',
    'You may rely on it',
    'Ask again later',
    'Concentrate and ask again',
    'Don\'t count on it',
    'My sources say no',
    'Outlook not so good',
    'Very doubtful',
    ] 

    @combo = @user_arr + @response

  end

  def question_input
    sleep(1)
    puts "I am the spooky Magic Eight Ball".colorize(:red)
    sleep(1)
    puts "ASK YOUR QUESTION, PEASANT".colorize(:red)
    
    question_input = gets.strip
    if question_input == @easter_egg 
      sleep(0.5)
      puts "Oooooo You know the secret question.".colorize(:red)
      sleep(0.5)
      puts "You may now add your own costom response.".colorize(:red)
      add_answer
    else 
      sleep(0.5)
      question_out
      sleep(0.5)
    end 
  end

  def question_out
    @combo
    randomize = @combo.sample
    puts "#{randomize}".colorize(:red)
    
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


  def settings
    puts "===========================".colorize(:red)
    print "========".colorize(:red)
    print " Settings ".colorize(:white) 
    puts "========".colorize(:red)
    puts "===========================".colorize(:red)
    puts "1) Add Custom Response"
    puts "2) View Respoonses"
    puts "3) Reset Magic Eight Ball"
    puts "4) Main Menu"
    choice = gets.to_i
    case choice
      
      when 1
        add_answer
      when 2
        responses
      when 3
        puts "The Magic Eight Ball has been reset"
        reset
      when 4 
        main_escape
      else 
        puts "Invalid response, please try again."
        settings
      end 
    end 

    def responses
    puts "===========================".colorize(:red)
    print "=====".colorize(:red)
    print " View Responses ".colorize(:white) 
    puts "======".colorize(:red)
    puts "===========================".colorize(:red)
    puts "Which resonses would you like to view?"
    puts "1) My custom responses"
    puts "2) Default responses"
    puts "3) All responses"
    puts "4) Settings"
    puts "5) Main Menu"
    choice = gets.strip.to_i
    case choice 
      when 1 
        puts "Here are your custom responses:"
        puts @user_arr.each {|n| "n"}
        responses
      when 2  
        puts "Here are the default responses:"
        puts @response 
        responses
      when 3 
       puts "Here are all of the responses:"
       puts @combo
       responses
      when 4
        settings
      when 5 
        main_escape
      else 
        puts "Invalid response"
        responses
      end
    end  

  def main_escape 
  end 

  def reset
    @user_arr = [] 
  end 


  

end