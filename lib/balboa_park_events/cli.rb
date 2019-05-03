# The CLI Controller - responsible for business logic/user interactions
class BalboaParkEvents::CLI

  def call
    @page = BalboaParkEvents::Scraper.new
    welcome_message
    list_events
    menu
  end

  def welcome_message
    puts ""
    puts "----- #{@page.get_welcome_header} -----"
    puts ""
    puts "#{@page.get_welcome_text}"
    puts ""
    puts "-------------------------------------------------------"
    puts ""
  end

  def list_events
    puts "#{@page.get_events_header}"
    puts ""
    @events = BalboaParkEvents::Event.today
    @events.each.with_index(1) do |event, i|
      puts "#{i}. #{event.title} - #{event.location} - #{event.time} - #{event.type}"
    end
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
