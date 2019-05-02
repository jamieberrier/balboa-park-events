class BalboaParkEvents::Scraper
  def get_page
   Nokogiri::HTML(open("https://www.balboapark.org"))
 end

 def get_welcome_header
   self.get_page.css("div.region.region-highlighted").css("h2").text
   #"Welcome to Balboa Park"
 end

 def get_welcome_text
   self.get_page.css("div.region.region-highlighted").css("p").text
   #"Ever changing. Always amazing.  Where culture, science, and nature collide, Balboa Park
   #is home to more than 16 museums, multiple performing arts venues, lovely gardens, trails, and
   #many other creative and recreational attractions, including the San Diego Zoo. With a variety of
   #cultural institutions among its 1,200 beautiful and lushly planted acres, there is something for
   #everyone."
 end

 def get_events
   self.get_page.css("div#events-container")
 end

 def get_events_header
   self.get_events.css("h1.fancy-header").text
   #"What's Happening Today"
 end
end
