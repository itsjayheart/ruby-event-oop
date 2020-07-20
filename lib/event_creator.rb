require 'pry'

class EventCreator

	def initialize
		print 'enter name of your event : '
		event_title = gets.chomp
		puts ''

		print 'when is it gonna be (YYYY-MM-DD hh:mm) : '
		event_start_date = gets.chomp
		puts ''

		print 'how long will it last (in minutes) : '
		event_duration = gets.chomp
		puts ''

		print "who will attend it (enter emails separated by ', ') : "
		event_attendees = gets.chomp.tr(',', '').split
		puts ''

		puts event = Event.new(event_start_date, event_duration, event_title, event_attendees)
	end

end 