require 'open-uri'
require 'pry'

# student body: student.css("div.student-card").first
#name: person.css("div.card-text-container h4.student-name").text
#location: person.css("div.card-text-container p.student-location").text
#url: person.css("a")[0]['href']


class Scraper
  
  def self.scrape_index_page(index_url)
    students = []
    Nokogiri::HTML(open(index_url)).css("div.student-card").each do |person|
      students << {
        :name => person.css("div.card-text-container h4.student-name").text, 
        :location => person.css("div.card-text-container p.student-location").text, 
        :profile_url => person.css("a")[0]['href']} 
    end
    students
    # binding.pry
  end

  def self.scrape_profile_page(profile_url)
    student_info = {
      :twitter =>
      :linkedin =>
      :github=>
      :blog =>
      :profile_quote =>
      :bio => Nokogiri::HTML}
    Nokogiri::HTML(open(profile_url))
    binding.pry
# :twitter =>
# :linkedin =>
# :github=>
# :blog =>
# :profile_quote =>
# :bio =>
    
  end

end

