class BalboaParkEvents::Event
  attr_accessor :title, :location, :time, :type, :description, :ticket_url, :event_url

  def self.today
    events = []

    events << self.event_1
    events << self.event_2
    events << self.event_3

    events
  end

  def self.event_1
    event = self.new

    event.title = "Pause|Play"
    event.location = "Fleet Science Center"
    event.time = "10:00 AM - 6:00 PM"
    event.type = "Exhibition"

    event.description = "description"
    event.ticket_url = "tickets"
    event.event_url = "event site"

    event
  end

  def self.event_2
    event = self.new

    event.title = "PostSecret"
    event.location = "San Diego Museum of Man"
    event.time = "10:00 AM - 7:00 PM"
    event.type = "Exhibition"

    event.description = "description"
    event.ticket_url = "tickets"
    event.event_url = "event site"

    event
  end

  def self.event_3
    event = self.new

    event.title = "Hidden Gems"
    event.location = "San Diego Natural History Museum (theNat)"
    event.time = "10:00 AM - 5:00 PM"
    event.type = "Permanent Exhibitions"

    event.description = "description"
    event.ticket_url = "tickets"
    event.event_url = "event site"

    event
  end
end
