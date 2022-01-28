require './input.rb'
require './inputProcessor.rb'
require './calculateTax.rb'

items = TakeInput.new.input
item_hashs =  InputProcessor.new(items).process
CalculateTax.new(item_hashs).calculate
