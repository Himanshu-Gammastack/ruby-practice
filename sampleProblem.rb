require './input.rb'
require './inputProcessor.rb'
require './calculateTax.rb'

<<<<<<< HEAD
items = TakeInput.new.input
item_hashs =  InputProcessor.new(items).process
CalculateTax.new(item_hashs).calculate
=======
  def calculateTax
    for item in @salesItems do
       itemArray = item.split
       itemCount = itemArray[0].to_i
       itemPrice = itemArray[-1].to_f
       import_tax = 0
       sales_tax = 0;
       if item.include? "imported"
         import_tax = itemPrice * 0.05
       end
       if !(item.include? "book" or item.include? "chocolate" or item.include? "headache" or item.include? "chocolates")
         sales_tax=itemPrice * 0.1
       end
       @totalAmount = (@totalAmount.to_f + itemPrice.to_f + import_tax.to_f + sales_tax.to_f)
       @totalSalesTax = @totalSalesTax.to_f + import_tax.to_f + sales_tax.to_f
       item = item.gsub(itemPrice.to_s,(itemPrice.to_f+import_tax.to_f+sales_tax.to_f).to_s)
       item = item.gsub("at", ":")
       puts item

    end
    puts ("Total Tax: " + @totalSalesTax.to_s)
    puts ("Total Ammount: " + @totalAmount.to_s)
  end

end


sales = Sales.new
sales.takeInput
sales.calculateTax
>>>>>>> 5c5bf4af198474c6be89730792cee95c4e858c58
