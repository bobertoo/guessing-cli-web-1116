# Code your solution here!
def run_guessing_game
  puts "Guess a number between 1 and 6."
  guess = gets.chomp
  if guess.downcase == "exit"
    exit_method
  else
    dice = rand(1..6)
    num_bool = false
    win = false
    answer = ""
    (1..6).each do |num|
      if guess == num.to_s
        num_bool = true
        if guess == dice.to_s
          answer = "You guessed the correct number!"
          win = true
        end
      end
    end
    if num_bool
      if answer == ""
        answer = "The computer guessed #{dice}."
      end
    else
      answer = "Invalid guess"
    end
    puts answer
    run_guessing_game
  end

end

def roll

end

def exit_method
  puts "Goodbye!"
end
