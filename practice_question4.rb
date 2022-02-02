puts "Enter the size of Array 1: "
e_of1 = gets.chomp.to_i
arr1 = Array.new
puts "Enter elements in Array 1:"
e_of1.times do
  arr1.push gets.chomp.to_i
end
puts "Enter the size of Array 2: "
e_of2 = gets.chomp.to_i
arr2 = Array.new
puts "Enter elements in Array 2: "
e_of2.times do
  arr2.push gets.chomp.to_i
end

puts arr1.concat(arr2)
