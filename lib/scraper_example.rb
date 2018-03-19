require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com")

doc = Nokogiri::HTML(html)
text = doc.css(".site-header__hero__headline").text

binding.pry
puts "a"
