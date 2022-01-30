require './Inputuser.rb'
require './Inputprocessor.rb'
require './Calculatetax.rb'

products = TakeInput.new.input
product_hash_array =  InputProcessor.new(products).process
CalculateTax.new(product_hash_array).calculate
