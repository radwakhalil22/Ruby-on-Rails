# 1
def create_copies(string, n)
  result = ""
  n.times { result += string }
  result
end

string = "a"
n = 6

n.times do |i|
  puts create_copies(string, i+1)
end

#2
def starts_with_if?(str)
  str.start_with?('if')
end

def check_string_starts_with_if
  print "Type here: "
  str = gets.chomp
  result = starts_with_if?(str)
  puts result
end

check_string_starts_with_if

#3

def exchange_first_last
  print "Type here: "
  string = gets.chomp

  if string.length <= 1
    return string
  else
    first_char = string[0]
    last_char = string[-1]
    middle_chars = string[1..-2]
    return last_char + middle_chars + first_char
  end
end

puts exchange_first_last

#4

def add_last_character
  print "Enter a string: "
  string = gets.chomp

  if string.length <= 1
    return string
  else
    last_char = string[-1]
    return last_char + string + last_char
  end
end

puts add_last_character

#5
def leap_year?(year)
  if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    return "#{year} is a leap year"
  else
    return "#{year} is not a leap year"
  end
end

print "Enter a year: "
year = gets.chomp.to_i

puts leap_year?(year)


#6

def reverse_array(arr)
  new_arr = arr.reverse
  return new_arr
end

arr = [5, 6, 7]
result = reverse_array(arr)
puts result



#7
def sum_except_17(array)
  sum = 0
  skip_next = false

  array.each do |num|
    if num == 17
      skip_next = true
    elsif skip_next
      skip_next = false
    else
      sum += num
    end
  end

  return sum
end

arrays = [[3, 5, 17, 6], [3, 5, 1, 17], [3, 17, 1, 7], []]

arrays.each do |array|
  puts sum_except_17(array)
end
