require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = []
  
  def initialize(email_to_save, age_to_update)
    @email = email_to_save
    @age = age_to_update
    @@all_users << self
  end
 
  def self.all
    return @@all_users
  end
  
  def self.find_by_email(email_to_find)
    @@all_users.each do |i|
      return "Voici l'âge du user #{i.age} ans" if i.email == email_to_find
    end
  end
  
end

binding.pry

=begin
julie = User.new("julie@gmail.com", 33)
jean = User.new("jean@hotmail.fr", 49)
=end