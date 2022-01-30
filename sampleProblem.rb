require './input.rb'
require './inputProcessor.rb'
require './calculateTax.rb'

products = TakeInput.new.input
product_hash_array =  InputProcessor.new(products).process
CalculateTax.new(product_hash_array).calculate
