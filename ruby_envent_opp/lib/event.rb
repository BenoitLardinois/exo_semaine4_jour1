require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
    
  def initialize(the_start_date)
    @start_date = the_start_date
    @start_date = Time.parse("2010-10-31 12:00")
  end

  def a_duration(the_duration)
    @duration = the_duration
  end  
  
  def a_title(the_title)
    @title = the_title
  end
  
  def a_attendees(*the_attendees)
    @attendees = the_attendees
  end
  
  def postpone_24h
    @start_date = @start_date + 86400
  end
  
  def end_date(seconds)
    @duration = @duration + seconds
    @start_date = @start_date + @duration 
  end
  
  def is_past?
    time_1 = Time.now
    time_2 = @start_date
    if time_1 > time_2
      return true
    else time_1 < time_2
      return false
    end
  end
  
   def is_future?
    time_1 = Time.now
    time_2 = @start_date
    if time_1 < time_2
      return true
    else time_1 > time_2
      return false
    end
  end

=begin
#METHOD A FAIRE !!!
  def is_soon?
    time_1 = Time.now
    time_2 = @start_date
    if time_1 > time_2
      return false
    else time_1 < time_2
      return true
    end
  end
=end
  
  def to_s
    print "> " 
    puts "Titre: #{@title}"
    print "> " 
    puts "Date de début: #{@start_date}"
    print "> " 
    puts "Durée: #{@duration} minutes"
    print "> " 
    puts "Invités: #{@attendees}"
  end
  
  def show_itself
    puts self
  end
  
end

binding.pry