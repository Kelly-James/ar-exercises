require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store2.employees.create(first_name: "TuPac", last_name: "Shakur",
hourly_rate: 70)

@store1.employees.create(first_name: "Kelly", last_name: "Clancy",
hourly_rate: 61)

@store1.employees.create(first_name: "Dr", last_name: "Dre",
hourly_rate: 100)

@store2.employees.create(first_name: "Snoop", last_name: "Dogg",
hourly_rate: 59)

@employees1 = @store1.employees
@employees2 = @store2.employees

pp @employees1

pp @employees2

@store1.save

@store2.save

def output_error_message_for_invalid_employee(store)
  # Select all the employees that have failed validation
  invalid_employees = store.employees.select { |employee| !employee.valid? }

  # Output the validation error messages for every invalid employee
  invalid_employees.each do |employee|
    puts employee.inspect + ' ' + employee.errors.full_messages.inspect
  end
end

output_error_message_for_invalid_employee(@store1)
output_error_message_for_invalid_employee(@store2)
