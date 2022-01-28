class TakeInput
  def input
    @products = []
    puts "Enter input"
    loop do
      item = gets.chomp
      if item.empty?
        break
      end
      @products << item
    end
    @products
  end
end
