require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
burnaby = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true)

whislter = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false)

yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true)

# use where method to fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where(womens_apparel: true, annual_revenue  < 1000000)

def filter_mens_store(mens_stores)
  mens_stores.each do |store|
    puts "#{store.name} store has an annual revenue of #{store.annual_revenue}."
  end
end

def filter_womens_store(womens_stores)
  womens_stores.each do |store|
    puts "#{store.name} store has an annual revenue of #{store.annual_revenue}."
  end
end

filter_mens_store(@mens_stores)
filter_womens_store(@womens_stores)