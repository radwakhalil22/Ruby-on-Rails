class User
    @@name="user"
    @name
    
    def initialize(name="N/A")
        @name=name
    end

    def self.name
        "class name: #{@@name}"
    end
    def self.changeName=(name)
        @@name=name
    end
    def setName=(name)
        @name=name
    end
    def getName
        @name
    end

end

puts User.name
user1=User.new()
puts user1.getName
user1.setName="Radwa"
puts user1.getName
user2=User.new("Khalil")
puts user2.getName



class MyMath
    def initialize()
    end

def calc(n1, n2, op)
    unless validate(n1, n2, op)
    raise "Cannot perform operation"
    end
    method = assign(op)
    method.call(n1, n2)
end

def validate(n1, n2, op)
    isNumber(n1) && isNumber(n2) && isOperator(op) && !(op == "/" && n2.zero?)
end

def isNumber(number)
    number.is_a?(Numeric)
end

def isOperator(op)
    if ["+", "-", "*", "/"].include?(op)
    return true
    end
    raise "Unsupported operator"
end

def assign(op)
    case op
    when "+"
    method(:sum)
    when "-"
    method(:sub)
    when "*"
    method(:multiply)
    when "/"
    method(:divide)
    end
end

def sum(n1, n2)
    n1 + n2
end

def sub(n1, n2)
    n1 - n2
end

def multiply(n1, n2)
    n1 * n2
end

def divide(n1, n2)
    n1 / n2
end
end

begin
    puts MyMath.new.calc(1, 3, "+")
    puts MyMath.new.calc(1, 0, "-")
    puts MyMath.new.calc(3, 5, "*")
    puts MyMath.new.calc(12, 0, "*")
    puts MyMath.new.calc(1, 0, "/")
rescue StandardError => e
    puts "Error: #{e.message}"
end
begin
    puts MyMath.new.calc(12, "0", "*")
    rescue StandardError => e
    puts "Error: #{e.message}"
end
begin
    puts MyMath.new.calc(12, 3, "5")
    rescue StandardError => e
    puts "Error: #{e.message}"
end

$LOAD_PATH << "."
require "module"


person=Person::Person.new
person.get_person_data
person.welcome