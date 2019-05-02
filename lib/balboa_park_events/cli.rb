# The CLI Controller - responsible for business logic/user interactions
class BalboaParkEvents::CLI

  def call
    welcome_message
    list
    menu
    goodbye
  end

  def welcome_message
    puts ""
    puts "----- Welcome to Balboa Park -----"
    puts ""
    puts <<-DOC.gsub /^\s*/, ''
    Ever changing. Always amazing.
    Where culture, science, and nature collide, Balboa Park is home to
    more than 16 museums, multiple performing arts venues, lovely gardens, trails, and
    many other creative and recreational attractions, including the San Diego Zoo.
    With a variety of cultural institutions among its 1,200 beautiful and lushly planted acres, there is something for everyone.
    DOC
    puts ""
  end


  def list
    puts <<-DOC.gsub /^\s*/, ''
    What's Happening Today:
      1. Event 1
      2. Event 2
      3. Event 3
    DOC
    puts ""
  end

  def menu
    input = nil
    while input != "exit"
      puts "------------------------------------------------------------------"
      puts "What would you like to do?"
      puts ""
      puts "Type the event number you would to know more about (1, 2, or 3) OR"
      puts "Type 'list' to see the list again OR Type 'exit':"
      puts "------------------------------------------------------------------"

      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on 1st event..."
      when "2"
        puts "More info on 2nd event..."
      when "3"
        puts "More info on 3rd event..."
      when "list"
        list
      end
    end
  end

  def goodbye
    puts ""
    puts "Come back tomorrow to see the day's featured events at Balboa Park!"
    puts ""
  end


end
