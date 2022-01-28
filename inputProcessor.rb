class InputProcessor
  def initialize(items)
    @items = items
  end
  def process
    @items_array = []
    @items.each do |item|
      item_hash = {}
      item_hash[:quantity] = item.split[0].to_i
      item_hash[:name] = item.split(" at ").first.delete("/1-9/").strip
      item_hash[:price] =item.split[-1].to_f

      @items_array << item_hash
    end
    @items_array
  end
end
