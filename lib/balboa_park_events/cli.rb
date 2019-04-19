# The CLI Controller - responsible for business logic/user interactions
class BalboaParkEvents::CLI

  def call
    puts "----- Welcome to Balboa Park -----"
    puts "Ever changing. Always amazing.Where culture, science, and nature collide, Balboa Park is home to more than 16 museums, multiple performing arts venues, lovely gardens, trails, and many other creative and recreational attractions, including the San Diego Zoo. With a variety of cultural institutions among its 1,200 beautiful and lushly planted acres, there is something for everyone."
    list
    menu
    goodbye
  end

  def list
    puts <<-DOC.gsub /^\s*/, ''
    What's Happening Today:
      1. Event 1
      2. Event 2
      3. Event 3
      4. See more/future events
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number you would like more info on, or type list to see the list again, or type exit:"
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
    puts "Come back tomorrow to see the day's events at Balboa Park!"
  end


end
