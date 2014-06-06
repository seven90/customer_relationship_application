require_relative "contact"
require_relative "rolodex"

class CRM
	def initialize(name)
		@name = name
	end

	def print_main_menu
		puts "[Add] Add a new contact"
		puts "[Modify] Modify an existing contact"
		puts "[Display All] Display all the contacts"
		puts "[Display Contact] Display one specific contact"
		puts "[Display Attribute] Display an attribute"
		puts "[Delete] Delete a contact"
		puts "[Exit] Exit"
		puts "Enter a command:"
	end

	def main_menu
		print_main_menu
		user_selected = gets.downcase
		call_option(user_selected)
	end

	def call_option(user_selected)
		add_new_contact if user_selected == 1
		modify_existing_contact if user_selected == 2
		delete_a_contact if user_selected == 3
		display_all_contacts if user_selected == 4
		display_an_attribute if user_selected == 5
		exit if user_selected == 6
	end

	def self.run(name)
		crm = CRM.new(name)
		crm.main_menu
	end
end

CRM.run("my CRM") 
