no_of_element = gets.chomp.to_i
arr = Array.new(no_of_element)
no_of_element.times do |item|
  num=gets.chomp.to_i;
  arr[item]=num;
end
frequency = Hash.new
for e in arr do
   if !frequency.key?(e)
      frequency[e]=1;
   else
     frequency[e]=1+frequency[e];
   end
end

frequency.each do |key, value|
   puts "Key: " + key.to_s + " " + "Value: "+ value.to_s
end
