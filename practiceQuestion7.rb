File.open("friends.txt", "r") do |file|
  #read full file
  #puts file.read()
  #to read single line
  #puts file.readline()
  # to read secondline file.readlines()[2]
  # line by line read
  for line in file.readlines()
    puts line
  end
end
file = File.open("friends.txt", "a")
file.write("krishna raghuwanshi \n")
file.close()
file = File.open("friends.txt", "r")
puts file.read()
