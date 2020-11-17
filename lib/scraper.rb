require 'open-uri'
require 'pry'

# student body: student.css("div.student-card").first


class Scraper

  def self.scrape_index_page(index_url)
    student_index_array = []
    Nokogiri::HTML(open(index_url)).css("div.student-card").each do |person|
      
    end
    
    binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

