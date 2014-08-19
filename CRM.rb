require_relative('rolodex')
require_relative('contacts')

class CRM
	# def self.run(name)
	# 	crm = CRM.new(name)
	# 	crm.main_menu
	# end
#As a user, prompt "add, modify, display all, display one, display attr, delete, exit"	
	attr_accessor :name

	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
		main_menu
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
	   display_contact if user_input == 3
	   one_contact if user_input == 4
	   contact_attr if user_input == 5
	   delete_contact if user_input == 6
    end

    def main_menu
	  print_main_menu
	  input = gets.chomp.to_i
	  call_option(input)
	end	

	def add_contact
	  print "Enter your First Name: "
	  first_name = gets.chomp
	  print "Enter your Last Name: "
	  last_name = gets.chomp
	  print "Enter Email Address: "
	  email = gets.chomp
	  print "Enter a Note: "
	  note = gets.chomp 
	  contact = Contact.new(first_name, last_name, email, note)
	  @rolodex.add_contact(contact)
	  main_menu
	end

	def modify_contact
		print "Enter the first name you would like to edit: "
		first_name = gets.chomp
		found_contact = @rolodex.find_contact(first_name)
		puts "[1] Edit First name", "[2] Edit Last Name", "[3] Edit Email", "[4] Edit Note"
		contact_changer = gets.chomp.to_i
		case contact_changer
		when 1
			print "Enter New First Name: "
			new_first_name = gets.chomp
			found_contact.first_name = new_first_name
		when 2 
			print "Enter New Last Name: "
			new_last_name = gets.chomp
			found_contact.last_name = new_last_name
		when 3
			print "Enter New Email: "
			new_email = gets.chomp
			found_contact.email = new_email
		when 4
			print "Enter New Note: "
			new_note = gets.chomp
			found_contact.note = new_note
		end
		puts found_contact.inspect #.inspect makes it readable, not random id code
		main_menu
	end

	def display_all
		@rolodex.display_all_contacts.each do
			puts contact.to_s
		end
	end

	def display_one_contact
		puts "Enter first name of contact you want to edit"
		one_contact = gets.chomp
		@rolodex.display_one_contact
	end
end

 CRM.new("CRM")