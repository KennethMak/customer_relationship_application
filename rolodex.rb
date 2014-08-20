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

   def dis_all_contacts
    @contacts.each do |contact|
      puts "Contact: ", contact.first_name, contact.last_name
    end
   end

   def delete(contacts)
      @contacts.each do |contact|
        if contact.first_name == contacts
          contacts.delete
        end
      end
   end


end