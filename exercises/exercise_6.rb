require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


@store1.employees.create(first_name: "Sohaib", last_name: "Al", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 45)

@store2.employees.create(first_name: "Bob", last_name: "Johnson", hourly_rate: 40)
@store2.employees.create(first_name: "Samantha", last_name: "Williams", hourly_rate: 55)
