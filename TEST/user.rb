require "pry"

=begin
#(Class et Instances).
class User
  def greet
    puts "Bonjour, monde!"
  end

#méthode d'instance.
  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name}!"
  end
end #fin de ma class

binding.pry
puts "end of file"
=end




=begin
#le mot SELF
class User
  def show_itself
    print "Voici l'instance : "
    puts self
  end 
end

binding.pry
puts "end of file"
=end




#Définir une variable d'instance (@)
=begin
class User
  def update_email(email_to_update)
    @email = email_to_update #ici la variable d'instance
  end
  
  def read_email
    return @email
  end
end

binding.pry
puts "end of file"
=end




#variable d'instance en écriture seulement(attr_writer)
=begin
class User
  attr_writer :mastercard #à mettre en en-tête de ta class
  
  def read_mastercard
    return @mastercard
  end
end

binding.pry
puts "end of file"
=end




#Donner accès à une variable d'instance en lecture seulement (attr_reader)
=begin
class User
  attr_reader :birthdate
  
  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end
end

binding.pry
puts "end of file"
=end




#Donner accès à une variable d'instance en lecture ET en écriture (attr_accessor). e attr_accessor combine le attr_reader et attr_writer. 
=begin
class User
  attr_accessor :email
end

binding.pry
puts "end of file"
=end



#Initialiser un email à une instance
=begin
class User
  attr_accessor :email
  
  def initialize(email_to_save)
    @email = email_to_save
    puts "On envoie un email de Bienvenue !!"
  end
end

binding.pry
puts "end of file"
=end





#variables de class
=begin
class User
  attr_accessor :email
  @@user_count = 0 #on initialise la variable (à 0) de class qui sera un compteur du nombre d'instance
  
  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1 #un utilisateur vient d'être créé; on ajoute donc 1 au compteur
  end
  
#Voici comment appeller cette variable
  def self.count
    return @@user_count
  end
end
  
binding.pry
puts "end of file"
=end



#Méthodes publiques/Méthodes privées.


#Récapitulatif de tt ce qui est important
class User
  attr_accessor :email, :encrypted_password
  @@user_count = 0
  
  def initialize(email_to_save)
    @email =email_to_save
    @@user_count = @@user_count + 1
  end
  
  def change_password(new_password)
    @encrypted_password = encrypt(new_password)
  end
  
  def self.count
    return @@user_count
  end
  
  private
  

  def encrypt(string_to_encrypt)
    return "##ENCRYPTED##"
  end
  
end

binding.pry
puts "end of file"





