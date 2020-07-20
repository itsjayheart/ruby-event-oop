class Event
	attr_accessor :start_date, :duration, :title, :attendees

	def initialize(date, int, str, arr)
		@start_date = Time.parse(date)
		@duration = int
		@title = str
		@attendees = arr

		#@attendees_email_array = []

		#arr.each do |el| 
			#@attendees_email_array << el.email	
		#end
		#return @attendees_email_array
	end

	def postpone_24h
		@start_date = start_date + 86400
	end

	def end_date
		return @end_date = @start_date + @duration * 60
	end

	def is_past?
		if Time.now > @end_date
			return true
		else
			return false
		end
	end

	def is_turfu?
		if Time.now < @start_date
			return true
		else
			return false
		end
	end

	def to_s
		puts "#{@title}"
		puts "begins #{@start_date}"
		puts "lasts #{@duration} minutes"
		puts "are attending : #{@attendees.join(', ')}"
	end  


end
