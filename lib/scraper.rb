require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

  # html = open("https://flatironschool.com")
  #
  # doc = Nokogiri::HTML(html)
  # text = doc.css(".site-header__hero__headline").text

  def get_page
    Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))

  end

  def get_courses

    get_page.css(".post h2")

  end

  def make_courses
    
    get_courses.each do |course|
      Course.new
    end



  end


  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end
