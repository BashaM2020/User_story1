require_relative("professor")
require_relative("student")

snape = Professor.new("Steven","Snape")
# p snape.fullname

students = []

stewie = Student.new("Stewie","Griffin")
peter = Student.new("Peter","Griffin")
lois = Student.new("Lois","Griffin")
chris = Student.new("Chris","Griffin")
meg = Student.new("Meg","Griffin")
brian = Student.new("Brian","Griffin")

# p stewie
# snape.teach(stewie)
# snape.teach(stewie)
# puts '==============='
# p stewie

students << stewie
students << peter 
students << lois 
students << chris 
students << meg 
students << brian 

# p students
# snape.teachCohort(students)
# puts "======================"
# p students


# snape.giveBonusMarks()
snape.graceMarks(50, students)
p students