class Book
@@on_shelf = []
@@on_loan = []
# attr_accessor :due_date
    def initialize(title, author, isbn)
        @title = title
        @author = author 
        @isbn = isbn
    end
# class methods------------------
    def self.create(title, author, isbn) 
        new_book = Book.new(title, author, isbn)
        @@on_shelf << new_book
        return new_book
    end

    def self.available
        return @@on_shelf
    end 

    def self.borrowed
        return @@on_loan
    end 
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def self.browse  
        @@on_shelf
    end 
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def self.current_due_date
    
        return #return date for the book borrowed today
    end

    def self.overdue_books
    end
#----------------------------------------------
# instance methods:

def borrow 
end

def return_to_library
end 

def lent_out?
end 
#--------------------------------------------------
end
#Instances:)
sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")

p sister_outsider