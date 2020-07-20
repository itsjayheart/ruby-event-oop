class User #creating User class
	attr_accessor :email 
	attr_accessor :age
	@@all_users = []

	def initialize(email, age)
		@email = email
		@age = age
		@@all_users << self
	end

	def self.all
		return @@all_users
	end

	def self.find_by_email(user_email)
		User.all.each do |user|
			if user.email == user_email
				return user
			end
		end
	end

end