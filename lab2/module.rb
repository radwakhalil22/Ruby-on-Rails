require "date"
module Person
    class Person
        attr_accessor :fname, :lname, :birth_date, :age

        def initialize(fname = '', lname = '', birth_date = nil, age = 0)
            @fname = fname
            @lname = lname
            @birth_date = birth_date
            @age = age
        end

        def get_person_data
            puts 'Enter First Name:'
            @fname = gets.chomp
            puts 'Enter Last Name:'
            @lname = gets.chomp
            puts 'Enter Birth Date (YYYY-MM-DD):'
            @birth_date = Date.parse(gets.chomp)
            calculate_age
        end

        def calculate_age
            @age = (Date.today - @birth_date).to_i / 365
        end

        def welcome
            puts "Welcome, #{@fname} #{@lname}!"
            puts "You are #{@age} years, #{months_old} months, and #{days_old} days old."
        end

        private

        def months_old
            (Date.today.year * 12 + Date.today.month) - (@birth_date.year * 12 + @birth_date.month)
        end

        def days_old
            (Date.today - @birth_date).to_i
        end
    end
end
