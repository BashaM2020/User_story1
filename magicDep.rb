require_relative("professor")
require_relative("subjects")

class MagicDep < professor 
    include 
    def initialize(a,b)
        super(a,b)
    end 

end  