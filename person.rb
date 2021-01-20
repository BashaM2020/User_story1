class Person 
    def initialize(firstname, lastname)
        @firstname = firstname
        @lastname = lastname
    end

    def fullname 
        "#{@firstname} #{@lastname}"
    end 

end 


# peter = Person.new("Peter","Griffin")

# p peter.fullname