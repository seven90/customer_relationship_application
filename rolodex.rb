class Rolodex
	attr_accessor :contacts
	def initialize
		@contacts = []
		@contact_id = 1000
	end

	def add_contact(contact)
		@contacts << contact
		contact.id = @contact_id
		@contact_id += 1
	end	
end	

