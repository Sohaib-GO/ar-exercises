require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average Revenue: #{average_revenue}"

puts "Number of stores with annual revenue greater than 1M: #{Store.where("annual_revenue > ?", 1000000).count}"
