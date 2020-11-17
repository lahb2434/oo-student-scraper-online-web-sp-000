require 'open-uri'
require 'pry'

# student body: student.css("div.student-card").first
#name: person.css("div.card-text-container h4.student-name").text
#location: person.css("div.card-text-container p.student-location").text
#url: person.css("a")[0]['href']


class Scraper

  def self.scrape_index_page(index_url)
    student_index_array = []
    Nokogiri::HTML(open(index_url)).css("div.student-card").each do |person|
      student_index_array << {
        :name => person.css("div.card-text-container h4.student-name").text, 
        :location => person.css("div.card-text-container p.student-location").text, 
        :profile_url => person.css("a")[0]['href']} 
    end
    student_index_array
    # binding.pry
  end

  def self.scrape_profile_page(profile_url)
    Nokogiri::HTML(open(profile_url)) #.css("")
    
    
  end

end

