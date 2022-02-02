arr1 = [1, 2, 3, "himanshu"]
arr1.map! { |element| element.class == Integer ? element.to_i * 2 : element }
puts arr1
