class BankAccount
@@interest_rate = 0.01
@@accounts = []

    def initialize
        @balance = 0
    end 

    def self.create
        new_account = BankAccount.new
        @@accounts << new_account
        return new_account
    end 

    attr_accessor :balance

    def self.total_funds
        sum = 0
        @@accounts.each do |account|
        sum += account.balance 
        end
        return sum
    end    

    def self.interest_time
        @@accounts.each do |account|
            account.balance += account.balance * @@interest_rate
        end 
    end
#------------------------------------------------------------------
    def deposit(num)
        @balance += num 
    end

    def withdraw(num)
        @balance -= num
    end 

end

my_account = BankAccount.create
your_account = BankAccount.create
# puts my_account.balance
# puts BankAccount.total_funds
my_account.deposit(200)
your_account.deposit(1000)
puts "Balance after deposit:"
puts my_account.balance 
puts your_account.balance 
puts "Total of money in bank:"
puts BankAccount.total_funds 
BankAccount.interest_time
puts "Balance after interest:"
puts my_account.balance 
puts your_account.balance
puts "*new total of money in bank:"
puts BankAccount.total_funds 
puts "my money after i withdraw:"
my_account.withdraw(50)
puts my_account.balance 
puts "**new total of bank"
puts BankAccount.total_funds 





