require 'pry'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      self.send("#{key}=", value)
    end
    # binding.pry
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      Self.new(student)
    end
    # binding.pry
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    @@all
  end
end

# self.class.send(:attr_accessor, "#{key}")