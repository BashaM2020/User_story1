require_relative("person")
# student inherits from person, we have to initialize the parent from student.
# super inherits/ calls the parents initialize
#constants remain the same forever, start with captial
class Student < Person 
    Level = 0
    def initialize(f,l)
        super(f,l)
        @knowledge_level = Level 
    end 

    def learn 
        @knowledge_level += 10
    end 

    def slack 
        @knowledge_level -= 5 if @knowledge_level >= 5
    end 

    def giveBonusMarks(mark)
        @knowledge_level+= mark 
    end 


end

stewie = Student.new("Stewie","Griffin")

# p stewie.fullname