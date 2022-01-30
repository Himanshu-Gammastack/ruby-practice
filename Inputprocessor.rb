class InputProcessor
  def initialize(products)
    @products = products
  end
  def process
    @product_hash_array = []
    @products.each do |product|
      product_hash = {}
      product_hash[:quantity] = product.split[0].to_i
      product_hash[:name] = product.split(" at ").first.delete("/1-9/").strip
      product_hash[:price] =product.split[-1].to_f

      @product_hash_array << product_hash
    end
    @product_hash_array
  end
end
