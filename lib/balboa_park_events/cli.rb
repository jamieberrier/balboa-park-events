# The CLI Controller - responsible for business logic/user interactions
class BalboaParkEvents::CLI

  def call
    welcome_message
    list_events
    menu
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

  def list_events
    puts "What's Happening Today:"
    puts ""
    @events = BalboaParkEvents::Event.today
    @events.each.with_index(1) do |event, i|
      puts "#{i}. #{event.title} - #{event.location} - #{event.time} - #{event.type}"
    end
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

      if input.to_i > 0
        the_event = @events[input.to_i - 1]
        puts "#{the_event.description}"
        puts "#{the_event.ticket_url}"
        puts "#{the_event.event_url}"
      elsif input == "list"
        list_events
      elsif input == "exit"
        goodbye
      else
        puts "Didn't understand, please try again."
      end
    end
  end

  def goodbye
    puts ""
    puts "Come back tomorrow to see the day's featured events at Balboa Park!"
    puts ""
  end
end
