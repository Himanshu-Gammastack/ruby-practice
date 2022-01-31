require './input_user.rb'
require './input_processor.rb'
require './calculate_tax.rb'

products = TakeInput.new.input
product_hash_array =  InputProcessor.new(products).process
CalculateTax.new(product_hash_array).calculate
