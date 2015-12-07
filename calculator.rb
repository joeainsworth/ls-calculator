# ask the user for two numbers
# ask the user for the type of opertation to perform
# perform the operation
# output the result

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividng'
  end
end

prompt('Welcome to the procedural calculator! Please enter your name:')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('Please enter a valid name.')
  else
    break
  end
end

prompt("Hello #{name}!")

loop do
  number_1 = ''
  loop do
    prompt("What's the first number?")
    number_1 = Kernel.gets.chomp

    if number?(number_1)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  number_2 = ''
  loop do
    prompt("What's the second number?")
    number_2 = Kernel.gets.chomp

    if number?(number_2)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    [1] Addition
    [2] Subtraction
    [3] Multiplication
    [4] Division
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please enter a valid operation.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number_1.to_i + number_2.to_i
           when '2'
             number_1.to_i - number_2.to_i
           when '3'
             number_1.to_i * number_2.to_i
           when '4'
             number_1.to_f / number_2.to_f
           end

  prompt("The result is: #{result}")

  prompt("Would you like to perform another calculation? [y] Yes [n] No")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Goodbye!')
