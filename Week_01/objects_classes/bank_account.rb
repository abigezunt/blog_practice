# One new concepts:
# Module can be used to implement namespaces
# Why?
#  Because when you include someones code, usually in an included
#  library, they MAY also have a name called BankAccount. This will
#  cause strange and confusing behavior.
#
# Creating a namespace will remove the "name conflict" because you're
# BankAccount class can only be accessed using GA::BankAccount. 
# Create a namespace GA
module GA

  class BankAccount
    # class instance variable
    # count of all the tranactions by all of the bank accounts instances
    @@xaction_count = 0
   
    #class method
    # Getter method, i.e. just exposing the underlying variable outside
    # this class.
    def self.num_of_xactions
      @@xaction_count
    end

    # class method
    def self.bank_name
      "Bank of America"
    end

    # Remember that attr_accessor only generates a getter and setter method
    # to expose the instance variable, @balance, to be read/written
    # from outside this class.
    #
    # Getter
    # def balance
    #   @balance
    # end
    # 
    # Setter
    # def balance=(new_balance)
    #   @balance = new_balance
    # end
  	attr_accessor :balance
  	
    def initialize(balance)
  		@balance = balance.to_i
      log
  	end	

    def deposit(amount)
      @balance += amount.to_i
      log
    end

    def withdraw(amount)
      @balance -= amount.to_i
      log
    end

    # You'll see that this is *not* a good place for a log method
    # we'll use a module in the future
    def log 
      puts "New Balance is #{@balance}"
      @@xaction_count += 1
    end
    
  end
end

# Calls the class method. The Bank's name is always going to be the
# same for all instances of a class.
puts "This is the bank's name: #{GA::BankAccount.bank_name}"

b1 = GA::BankAccount.new(440)
puts "bank account 1 balance is #{b1.balance}"

b1.deposit(10)
b1.withdraw(40)

puts "bank account 1 balance is #{b1.balance}"

puts "num of transaction on this account are #{GA::BankAccount.num_of_xactions}"




