arr1 = [1,2,3,"himanshu"]
arr2 = arr1.each do |e|
  if e.is_a? Numeric
    e = (e.to_i * 2).to_s
  else e.to_s
  end
end
puts arr2
