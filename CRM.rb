require_relative "rolodex.rb"
class CRM
#As a user, prompt "add, modify, display all, display one, display attr, delete, exit"	
	attr_accessor :name

	def initialize(name)
		@name = name

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
end

def main_menu
	print_main_menu
	input = gets.chomp.to_i
	call_option(input)
end

def call_option(input)
	when input == 1
		puts "Add a contact"
	when input == 2
		puts "Modify a contact"
	when input == 3
		puts "Display all contacts"
	when input == 4
		puts "Display one contact"
	when input == 5 
		puts "Display a contacts attribute"
	when inout == 6
		puts "Delete a contact"
	when input == 7
		puts "Exit"
	end
