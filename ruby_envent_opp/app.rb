# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

#user.rb
=begin
puts julie = User.new("julie@gmail.com", 33)
puts julie.email
puts julie.age
=end

#event.rb
standup = Event.new("2010-10-31 12:00")
standup.duration = 30
standup.title = ("Standup Quotidien")
standup.attendees = ["jeanmich@hotmail.fr", "mik@gmail.fer"]

puts standup
puts standup.duration
puts standup.start_date
puts standup.title
puts standup.attendees




