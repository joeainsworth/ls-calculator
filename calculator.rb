# ask the user for two numbers
# ask the user for the type of opertation to perform
# perform the operation
# output the result

Kernel.puts("Welcome to the procedural calculator!")

Kernel.puts("What's the first number?")
number_1 = Kernel.gets.chomp

Kernel.puts("What's the second number?")
number_2 = Kernel.gets.chomp

Kernel.puts("What operation would you like to perform?\n[1] Addition [2] Subtraction [3] Multiplication [4] Division")
operator = Kernel.gets.chomp

if operator == '1'
  result = number_1.to_i + number_2.to_i
elsif operation == '2'
  result = number_1.to_i  - number_2.to_i
elsif operator == '3'
  result = number_1.to_i  * number_2.to_i
else operator
  result = number_1.to_f / number_2.to_f
end

Kernel.puts("The result is: #{result}")
