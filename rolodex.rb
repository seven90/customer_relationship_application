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

	def find_contact
		print "What is the first name of the contact you want to modify?"
		first_check = gets.chomp
		@contacts.map  do |name|
			if first_check == name.first_name 
			puts "#{name.first_name} #{name.last_name} , is this the name you want to modify? [1=Y] [2=N]"
			answer = gets.chomp.to_i
				case answer
				when 1 then @contact_to_modify = name
				when 2 then puts "end"
				else puts "Error"
				end 
			else
			puts "false"
			end 
		end
	end	

	def modify_contact 
		find_contact
		p contact_to_modify
	end		

	def delete_a_contact
		puts "Working"
	end
		

end	

