class Rolodex
	def initialize
		@contacts = []
		@id = 1000
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end

	def display_all_contacts
		p contacts
	end
end	
