class BalboaParkEvents::Scraper

  def scrape_page
    Nokogiri::HTML(open("https://www.balboapark.org"))
  end

 def get_welcome_header
   self.scrape_page.search("div.region.region-highlighted h2").text
   #"Welcome to Balboa Park"
 end

 def get_welcome_text
   self.scrape_page.search("div.region.region-highlighted p").text
   #"Ever changing. Always amazing.  Where culture, science, and nature collide, Balboa Park
   #is home to more than 16 museums, multiple performing arts venues, lovely gardens, trails, and
   #many other creative and recreational attractions, including the San Diego Zoo. With a variety of
   #cultural institutions among its 1,200 beautiful and lushly planted acres, there is something for
   #everyone."
 end

 def get_events_header
   self.scrape_page.search("h1.fancy-header").text
   #"What's Happening Today"
 end

 def get_events
   self.scrape_page.css("div#events-container")
   #[#<Nokogiri::XML::Element:0x18d59cc name="div" attributes=[#<Nokogiri::XML::Attr:0x18d58f0
   #name="id" value="events-container">, #<Nokogiri::XML::Attr:0x18d58dc name="class"
   #value="container">] children=[#<Nokogiri::XML::Element:0x18d4dc4 name="h1"
   #attributes=[#<Nokogiri::XML::Attr:0x18d4d38 name="class" value="fancy-header">]
   #children=[#<Nokogiri::XML::Text:0x18d434c "What's Happening Today">]>, #<Nokogiri::XML::Element:0x18d40b8
   #name="div" attributes=[#<Nokogiri::XML::Attr:0x18d4040 name="class" value="inner">]>, #<Nokogiri::XML::Element:0x18daaf8
   #name="div" attributes=[#<Nokogiri::XML::Attr:0x18daa1c name="class" value="col-md-12 cta">]
   #children=[#<Nokogiri::XML::Element:0x18e3cd4 name="a" attributes=[#<Nokogiri::XML::Attr:0x18e3c70 name="class"
   #value="clear-button">, #<Nokogiri::XML::Attr:0x18e3c5c name="href" value="/events">]
   #children=[#<Nokogiri::XML::Text:0x18e3478 "See More Events">]>]>]>]
 end
end
