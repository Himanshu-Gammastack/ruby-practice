arr1 = [1,2,3,"himanshu"]
arr2 = arr1.map { |e|
  if e.is_a? Numeric
    e = (e.to_i*2).to_s
  else e.to_s
  end
}
puts arr2
