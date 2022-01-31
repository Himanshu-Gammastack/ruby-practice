puts "Enter the size of Array 1: "
e_of1 = gets.chomp.to_i
arr1 = Array.new
puts "Enter elements in Array 1:"
e_of1.times do
  arr1.push(gets.chomp.to_i)
end
arr2 = arr1.map { |e| puts e*2 }
puts arr2
