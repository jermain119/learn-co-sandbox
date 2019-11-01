require 'nokogiri'
require 'open-uri'
#require 'pry'


def spain
  puts "welcome to spain " 
  puts "      "
  puts
  html = open ('https://www.tripadvisor.com/Attractions-g187497-Activities-c47-Barcelona_Catalonia.html' )
  doc = Nokogiri::HTML(html)
  name = doc.css(".attraction_list .attraction_element")[0].css("a")[0].text
  url = doc.css(".attraction_list .attraction_element")[0].css("a")[0].attribute("href").value
  binding.pry 
end 