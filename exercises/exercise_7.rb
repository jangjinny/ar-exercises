require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Please enter a store name. "
@store = gets.chomp.to_i

@new_store = Store.create( name: @store ) 

@new_store.errors.each do |attribute, message|
  puts "#{attribute}: #{message}"
end

