# The CLI Controller - responsible for business logic/user interactions
class BalboaParkEvents::CLI
  
  def call 
    list_todays_events
    menu
    goodbye
  end
  
  def list_todays_events
    puts "Today's Events at Balboa Park:"
    puts <<-DOC.gsub /^\s*/, ''
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
      when "list"
        list_todays_events
      end
    end
  end
  
  def goodbye
    puts "Come back tomorrow to see the day's events at Balboa Park!"
  end
  
  
end