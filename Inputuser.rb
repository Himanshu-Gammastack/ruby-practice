class TakeInput
  def input
    @products = []
    puts "Enter input"
    loop do
      product = gets.chomp
      if product.empty?
        break
      end
      @products << product
    end
    @products
  end
end
