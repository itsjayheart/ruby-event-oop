# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

require 'pry'

EventCreator.new

binding.pry


Kala = User.new('kala@india.in', 33)
Wolf = User.new('wolf@deutshcland.de', 33)
Nomi = User.new('nomi@sf.sf', 33)
Will = User.new('will@cpd.ch', 33)
Sun = User.new('sun@seul.sk', 33)
Riley = User.new('riley@iceland.ic', 33)
Capheus = User.new('capheus@kenya.ken', 33)
Lito = User.new('lito@mexico.me', 33)

sense8_bday = Event.new('2020-08-08 08:08', 88, 'Sense8 bday', User.all)
