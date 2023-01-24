require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output name and annual revenue for each store
@mens_stores.each do |store|
  puts "Store Name: #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores
puts "Stores that has women apparel and annual revenue less than 1M"
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

# Output name and annual revenue for each store
@womens_stores.each do |store|
  puts "Store Name: #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
end

