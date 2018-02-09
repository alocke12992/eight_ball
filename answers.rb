require_relative 'main'

class  Answers

#ccok

  def initialize

    @answers = [ "It is certain",
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
  randomize = @answers.sample
  puts "#{randomize}"
end 
=======
puts "I am the spooky Magic Eight Ball".colorize(:red)
puts "ASK YOUR QUESTION, PEASANT".colorize(:red)
question_input = gets.strip

# blah
