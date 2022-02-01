arr1 = [1, 2, 3, "himanshu"]
arr2 = arr1.map!{ |e| e.class == Integer ? e.to_i * 2 : e}
puts arr2
