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
		@similar_names = @contacts.find_all {|name| name.first_name == first_check}
		@similar_names.map do |name| 
			puts "#{name.first_name} #{name.last_name} , is this the name you want to modify? [1=Y] [2=N]"
			answer = gets.chomp.to_i
				case answer
				when 1 then @contact_to_modify = name 
					break
				when 2 then next
				else puts "Error"
				end 
			
			end 
		
	end	

	def modify_contact 
		find_contact
		puts "What attribute would you like to modify?"
		puts " [1] First name"
		puts " [2] Last name"
		puts " [3] Email "
		puts " [4] Note"
		user_select = gets.chomp.to_i
		case user_select
		when 1 then puts "What would you like to change it to?"
		@contact_to_modify.first_name = gets.chomp
		end
		puts @contact_to_modify.first_name	
		puts @contacts[0].first_name
	end		

	def delete_a_contact
		puts "Working"
	end
		

end	

