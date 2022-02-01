File.open("friends.txt", "r") do |file|
  for line in file.readlines()
    puts line
  end
end
file = File.open("friends.txt", "a")
file.write("krishna raghuwanshi \n")
file.close
file = File.open("friends.txt", "r")
puts file.read
