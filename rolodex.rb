class Rolodex
  attr_reader :contacts

   def initialize
     @contacts = []
     @id = 1000
   end
 
   def add_contact(contact)
     contact.id = @id
     @contacts << contact
     @id += 1
   end

   def find_contact(information)
     @contacts.each do |contact|
       if contact.first_name == information
         return contact
       else
     	   return nil
       end
     end
   end

   # def display_one_contact(one_contact)
   #  puts "#{contact}"
   # end
end