class BalboaParkEvents::Event
  attr_accessor :title, :location, :category, :description, :ticket_url, :event_url

  def self.today
    self.scrape_events
  end

  def self.scrape_events
    events = []

    events << self.scrape_event_1
    events << self.scrape_event_2
    events << self.scrape_event_3

    events
  end

  def scrape_event_1
    event = self.new
  end

  def scrape_event_2
    event = self.new
  end

  def scrape_event_3
    event = self.new
  end

end
