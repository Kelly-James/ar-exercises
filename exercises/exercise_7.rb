require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

pp "Hello, Please Provide a Store Name!"

@store = gets.chomp

pp @store

store7 = Store.create(
  name: @store
)
