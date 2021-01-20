require_relative("person")

class Professor < Person 

    def initialize(x,y)
        super(x,y)
    end 
# method overiding/ done in inheritance
# super checks the parent class... sees the methods and returns in the interpolation
# super looks for the original methods
    def fullname
    "Prof. #{super()}"
    end 

    def teach(student)
        student.learn 
    end

    def teachCohort(student)
        student.each { |s| s.learn }
    end

    def graceMarks(mark, students)
        giveBonusMarks(mark, students)
    end 

#all methods defined after provate cant be accessed outside
    private
    def giveBonusMarks(mark,students )
        students.each { |s| s.giveBonusMarks(mark)} 
    end 


end

# snape = Professor.new("Steven","Snape")

# p snape.fullname