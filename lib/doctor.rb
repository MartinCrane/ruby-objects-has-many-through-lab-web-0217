class Doctor

	attr_accessor :appointments
	attr_reader :name

	def initialize(name)
		@name = name
		@appointments = [] 
	end

	def add_appointment(appointment)
		@appointments << appointment
	end

	def patients
		@appointments.map {|appointments| appointments.patient}	
	end
end