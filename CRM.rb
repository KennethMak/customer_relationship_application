require_relative "rolodex.rb"
class CRM
#As a user, prompt "add, modify, display all, display one, display attr, delete, exit"	
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def print_main_menu
		puts "[1] Add a contact"
		puts "[2] Modify a contact"
		puts "[3] Display all contacts"
		puts "[4] Display one contact"
		puts "[5] Display a contacts attribute"
		puts "[6] Delete a contact"
		puts "[7] Exit"
		puts "Choose an option by entering a number:"
	end

    def call_option(user_input)
	   add_contact if user_input == 1
	   modify_contact if user_input == 2
	   delete_contact if user_input == 3
	   one_contact if user_input == 4
	   contact_attr if user_input == 5
	   delete_contact if user_input == 6
    end


    def main_menu
	  print_main_menu
	  input = gets.chomp.to_i
	  call_option(input)
	end	
end

class Contact
	def initilize (id, first_name, last_name, email, notes)
		@id = id
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
	end

	def add_contact
	  print "Enter your First Name"
	  first_name = gets.chomp
	  print "Enter your Last name"
	  last_name = gets.chomp
	  print "Enter Email Address"
	  email = gets.chomp
	end
end
