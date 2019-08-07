# frozen_string_literal: true

# methods for calculator
def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def multiply(num1, num2)
  return num1 / num2
end

def divide(num1, num2)
  if num1 == 0
    until num1 != 0
    puts 'please use real numbers'
    num1 = gets.chomp.to_i
    if num2 == 0
      until num2 != 0
      puts 'please use real numbers'
      num2 = gets.chomp.to_i
    end
      result = "#{num1} / #{num2} = #{(num1 / num2)}"
  end
end

puts 'Welcome to Calculator. What operation do you want to use'
puts "Please choose a name or a symbol from the list below:
        1. add(+)
        2. subtract(-)
        3. multiply(*)
        4. divide(/)"

operation = gets.chomp.downcase

valid_operations = ['add', '+', 'subtract', '-', 'multiply', '*', 'divide', '/']

# to ensure we get a valid operation name or symbol
until valid_operations.include?(operation)
  print 'Please enter a valid operation: '
  operation = gets.chomp.downcase
end

puts 'please input the first number'
num1 = gets.chomp.to_i
puts 'please input the second number'
num2 = gets.chomp.to_i

# 
if operation == 'add' || operation == '+'
  result = add(num1, num2)
elsif operation == 'subtract' || operation == '-'
  result = subtract(num1, num2)
elsif operation == 'multiply' || operation == '*'
  result = multiply(num1, num2)
elsif operation == 'divide' || operation == '/'
  result = divide(num1, num2)
elsek
  puts 'You must you valid input!'
end

return result(num1, num2)
