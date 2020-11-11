require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'uri'
require 'json'

web = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Rajinikanth_filmography"))

class Scraper
  amt=[]

def initialize
 @url = "https://en.wikipedia.org/wiki/Rajinikanth_filmography"
 @nodes = Nokogiri::HTML(open(@url))
end

def summary(listy)
  
 scrape_data = @nodes

 web = scrape_data.css('div.mw-content-ltr table.wikitable tr') 


 scrape_hashes = web.map {|x| 
   flim = x.css('i a').text
   language = x.css('td a').text
   role = x.css('td').text
  { 
  :flim => flim,
  :language => language,
  :role => role,
  }
  }
 end
 rgs=Scraper.new
 puts rgs.summary('listy')
 amt=[]
 amt<<rgs.summary('listy')
 amt<<scrape_hashes
 puts amt
end


 

