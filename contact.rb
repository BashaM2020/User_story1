class Contact
  @@contacts = []
  @@id = 1
    def initialize(first_name,last_name,email,note)
      @first_name = first_name
      @last_name = last_name
      @email = email 
      @note = note
      @id = @@id
      @@id += 1
    end
# ------------------------------------------------------------------------------------------    
    attr_reader :id 
    attr_accessor :first_name, :last_name, :email, :note
# -------------------------------------------------------------------------------------------
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

    def self.all
      return @@contacts 
    end
  
    def self.find(id) 
      @@contacts.each do |contact|
        if contact.id == id 
          return contact
        end 
      end 
    end

    def self.find_by(attribute, value)
      @@contacts.each do |contact|
        if attribute == "first_name" && contact.first_name == value 
          return contact 
        elsif attribute == "last_name" && contact.last_name == value 
          return contact
        elsif attribute == "email" && contact.email == value 
          return contact
        elsif attribute == "note" && contact.note == value
        end 
      end 
    end
  
    def self.delete_all
      @@contacts.clear  
    end
# ----------------------------------------------------------------------------------------------  
    def full_name
      return "#{@first_name} #{@last_name}"
    end
   
    def update(attribute, value)   
        if attribute == "first_name" 
          @first_name =  value  
        elsif attribute == "last_name"  
          @last_name = value
        elsif attribute == "email"
          @email = value 
        elsif attribute == "note"
          @note = value 
        end 
    end
  
    def delete
    @@contacts.delete(self)  
    end
  
  end

  contact_a = Contact.create('Adam', 'Circus', 'adamc@gmail.com', 'goes to the gym')
  contact_b = Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
  contact_c = Contact.create('Celina', 'Jhonson', 'sillycelina@gmail.com', 'make up artist')
  contact_d = Contact.create('Daniella', 'Smith', 'danismithy@gmail.com', 'photographer')
  contact_e = Contact.create('Eric', 'Paul', 'epaul@gmail.com', 'Loves guitar')

# p Contact.all 
# p Contact.find(4)  
# p Contact.find_by('email','sillycelina@gmail.com')
# p contact_e.full_name
# contact_b.update('note', 'loves to bake')
# p contact_b
# contact_e.delete
# p Contact.all 

