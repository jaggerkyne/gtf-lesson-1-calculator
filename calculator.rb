# Assignment: Calculator

# Code up your own calculator from the lecture. 
# Make sure you can run it from the command line. 
# Save the calculator file in a directory, and initialize the directory as a git repository. 
# Make sure this isn't nested in another existing git repository. Then, push this git repository to Github.

# # Problem definition:
# Create a calculator that takes 2 numbers from user and 
# perform addition, subtraction, multiplication and division depends on the choice of the user.

# # Problem logic
# 1. take 2 numbers from user input
# 2. ask the user to make a choice to perform a calculation
# 3. print out result.
require 'pry'

def say(msg)
  puts "=====> #{msg}"
end

# When user enter bad input, returns nil
def verify(num)
  # the first check verifies that there is a digit somewhere, the second half sets the allowed format
  num.match(/\d/) && num.match(/^\d*.?\d*$/)
end


def do_math(num_1, num_2,choice)
  case choice
  when "1"
    say "The result is #{result = num_1.to_i + num_2.to_i}."
    calculator
  when "2"
    say "The result is #{result = num_1.to_i - num_2.to_i}."
    calculator
  when "3"
    say  "The result is #{result = num_1.to_i * num_2.to_i}."
    calculator
  when "4"
    say  "The result is #{result = num_1.to_f/num_2.to_f}."
    calculator
  when "5"
    say "Goodbye for now."
    abort
  else
    puts "Please make a choice between option 1-5."
    calculator
  end
end


def calculator
  say "Please enter a number."
  num_1 = gets.chomp
  say "Please enter another number."
  num_2 = gets.chomp
  # binding.pry
  if verify(num_1) != nil and verify(num_2) != nil
   say "What calculation do you want to perform?"
   say "1) Add 2) Subtract 3) Mutiply 4) Divide 5) Quit the calculator"
   choice = gets.chomp
   
   do_math(num_1,num_2,choice)
  else
    say "Are you sure what you have entered are both numbers? Try again!"
    calculator
  end  
end

calculator   

    
