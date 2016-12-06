require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@sum_revenue = Store.sum("annual_revenue")

pp @sum_revenue

@store_count = Store.count

pp @store_count

pp @sum_revenue / @store_count

@high_revenue = Store.where("annual_revenue > ?", 1000000).count

pp @high_revenue
