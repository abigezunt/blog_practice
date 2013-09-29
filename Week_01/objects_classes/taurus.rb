# Three new-ish concepts here:
# 1 - Class methods are defined using def self.method_name ...
# 2 - Class variables are defined with a double @@
# 3 = Modules can be used to implement a Mixin. Where a Mixin is a way
# share behavior, i.e. methods, across many other classes or modules.

# Use CamelCase for class names.
# Module are very much like classes with the exception that one cannot
# create a instance of a module.
module FBILogger
  
  def log_to_fbi(price)
    # sends xactions to FBI
    # The backtick, `, is used to invoke a Unix command
    # Here we are just invoking a Mac/OSX command named say
    `say "sold a Taurus for #{price} dollars"`
  end
end

class Taurus
  # Mixin the FBI_Logger, cuz the FBI wants to know everything.
  include FBILogger

  # class variable, used here to keep a running count of the number of
  # the Taurus sold.
  @@num_sold = 0

  # instance variables
  attr_accessor :buyer_name, :price, :sold
  
  def initialize(buyer_name, price)
    # initialize the instance variables
    @buyer_name = buyer_name
    @price = price
  end 

  # invoked every time a Taurus is sold
  def sold
    # Tell FBI that a Taurus has been sold
    log_to_fbi(price)
    # increment the total number of all Taurus sold
    @@num_sold += 1
  end

  # class method, NOTE: use self to indicate this is a class method.
  def self.how_many_sold
      @@num_sold
    end 
end

all_taurus_sold = []
# sell 5 Taurus, what is the plural Taurus? Tauri?
5.times do |i|
  # 10_000 is ten thousand, like using a comma 10,000
  a_taurus = Taurus.new("person_#{i}", 10_000 +  rand(1_500))
  a_taurus.sold
  all_taurus_sold << a_taurus
end

puts "how many taurus sold = #{Taurus.how_many_sold}"

