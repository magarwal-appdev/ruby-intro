class ProgramsController < ApplicationController
  def home
    # Your code goes below.
  
    my_web_birthday = Time.parse("Jan 19th, 2019")
    today = Time.now
    seconds_since_mysite_was_born = today - my_web_birthday
  
    @your_output = seconds_since_mysite_was_born

    @website_name = 'Neon - for life'

    render("programs_templates/home.html.erb")
  end

  def first_program
    # Your code goes below.

    computer_choice = ["Rock","Paper","Scissors"].sample
    my_choice = "Rock"

    if computer_choice == "Rock"
      result = "We Tied"
    elsif computer_choice == "Paper"
      result = "I Lost"
    else
      result = "I Won"
    end
      
    @your_output = "The computer chose: " + computer_choice + ". " + "We chose: " + my_choice + ". " + result 
        
    render("programs_templates/first_program.html.erb")
  end

  def second_program
    # Your code goes below.
    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array
    
    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares    

    render("programs_templates/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    sum = 0
    numbers.each do |num|
      if num%3 == 0 || num%5 == 0
        sum = sum+num
      end
    end

    @your_output = "the sum of all multiples of 3 & 5 below 1000 is #{sum}"

    render("programs_templates/third_program.html.erb")
  end
end
