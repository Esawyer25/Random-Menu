=begin
This is a random menu generator.
In each iteration it randomly combines one object from each of three arrays
to make a single string.
This is repeated ten times, to create an ordered list of ten randomly
created stings.
=end

#Set the components of the menu items
arr1 = %w(Creamy Yummy Hot Cold Spicy Not-ya-mama's Cheesy Chicago Classic Aged)
arr2 = %w(pan-fried teriyaki steamed glazed roasted baked balsamic sautéd boiled cured )
arr3 = %w(clams dumplings fritters burger adobo chili curd pizza soup quesadilla)


puts "GRUB HUB"
puts "---Menu---"
10.times do |n|
  new_item = "#{arr1[rand(10)]} #{arr2[rand(10)]} #{arr3[rand(10)]}"
  puts "#{n}. #{new_item}"
end
