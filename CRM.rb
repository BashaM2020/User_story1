require_relative 'contact'

class CRM 

    def initialize(name)
        @name = name
    end
#---------------------------------------------------------------------------------  
    def print_main_menu
        puts 'Enter a number: '
        puts '[1] Add a new contact'
        puts '[2] Modify an existing contact'
        puts '[3] Delete a contact'
        puts '[4] Display all the contacts'
        puts '[5] Search by attribute'
        puts '[6] Exit'
    end

    def main_menu
        while true 
            print_main_menu
            user_selected = gets.to_i
            call_option(user_selected)
          end
    end
  
    def call_option(user_selected)
        case user_selected
        when 1 then add_new_contact
        when 2 then modify_existing_contact
        when 3 then delete_contact
        when 4 then display_all_contacts
        when 5 then search_by_attribute
        when 6 then exit 
        end
    end
#---------------------------------------------------------------#  
# *my new contacts arn't saving!
    def add_new_contact
        print 'Enter First Name:'
        first_name = gets.chomp 
       
        print 'Enter Last Name:'
        last_name = gets.chomp
        
        print 'Enter Email Address:'
        email = gets.chomp

        print 'Enter a Note:'
        note = gets.chomp

        Contact.create(first_name, last_name, email, note)
    end

# ERROR with the last code    
    def modify_existing_contact
        print 'Enter an id: '
        id = gets.chomp
        contact_to_modify = Contact.find(id)  
        
        puts "Select which attribute to change: "
        puts "[1] First Name"
        puts "[2] Last Name"
        puts "[3] Email"
        puts "[4] Note"
        
        attribute_id_num = gets.chomp.to_i 

        case attribute_id_num
        when 1 then attribute = "first_name"
        when 2 then attribute = "last_name"
        when 3 then attribute = "email"
        when 4 then attribute = "note"
        end 

        puts "Enter a new value: "
        value = gets.chomp 

        contact_to_modify.update(attribute, value) 
        
    end 
  
    def delete_contact    
        print 'Enter an id to delete: '
        id = gets.chomp
        Contact.delete(id)  
    end
# not displaying my new ones  
    def display_all_contacts
        print Contact.all 
    end
  
    def search_by_attribute
        print "Enter an attribute to search by: "
        puts "[1] First Name"
        puts "[2] Last Name"
        puts "[3] Email"
        puts "[4] Note"
        
        attribute_search = gets.chomp.to_i

        case attribute_search 
        when 1 then attribute = "first_name"
        when 2 then attribute = "last_name"
        when 3 then attribute = "email"
        when 4 then attribute = "note"
        end 
        puts "What is the value for #{attribute}?"
        value = gets.chomp 

        p Contact.find_by(attribute, value)
    end
  
  end

  
crm_instance1 = CRM.new("one")
# p crm_instance1
# crm_instance1.display_all_contacts

# I DONT UNDERSTNAD THE OBJECT/ INSTANCE OF THIS CODE D:


