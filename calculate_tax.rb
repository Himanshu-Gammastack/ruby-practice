class CalculateTax
  def initialize(products)
    @products = products
    @total_amount = 0
    @total_tax = 0.0
  end
  def calculate
    tax_free_products = %w(book, chocolate, headache, chocolates)
    @products.each do |product|
       product_tax = 0.0
      if product[:name].include? "imported" then product_tax += 0.05 end
      if (product[:name].split.intersection(tax_free_products)).empty?
        then  product_tax += 0.1 end
      @total_amount += product[:price] + product[:price] * product_tax
      @total_tax += product[:price] * product_tax
      puts "#{product[:quantity].to_s}  #{product[:name]}  #{(product[:price] + product[:price] * product_tax).to_s}"
    end
    puts ("Total Tax:   #{@total_tax.to_s}")
    puts ("Total Ammount:   #{@total_amount.to_s}")
  end
end
