class CalculateTax
  def initialize(items)
    @items = items
    @total_amount = 0
    @total_tax = 0.0
  end
  def calculate
    freeProducts = ["book", "chocolate", "headache", "chocolates"]
    @items.each do |item|
       item_tax = 0.0
      if item[:name].include? "imported"
         item_tax += 0.05
      end
      if (item[:name].split.intersection(freeProducts)).empty?
        item_tax += 0.1
      end
      @total_amount += item[:price] + item[:price] * item_tax
      @total_tax += item[:price] * item_tax
      puts item[:quantity].to_s + " " + item[:name] + " : " + (item[:price] + item[:price] * item_tax).to_s
    end
    puts ("Total Tax: " + @total_tax.to_s)
    puts ("Total Ammount: " + @total_amount.to_s)
  end
end
