

=begin
This is a random menu generator, it creates three-word names for new foods.
The program starts with a library of food words contained in one array of
adjectives, another array of cooking styles, and a third array of foods.

This script can make from 1 to 10 food items.  The user enters the number of
items they would like to be outputed.

In each iteration one object from each of three arrays is randomly chosen
and combined with the others to make a single string.  Then, the componets
of that string are removed from the food word library.  The removal makes
sure there are no repeated words in the final menu.
=end

#Set the components of the menu word libraries.
#Possible improvment would be to let the user enter these
arr1 = %w(Creamy Yummy Hot Cold Spicy Not-yo-mama's Cheesy Chicago Classic Aged)
arr2 = %w(pan-fried teriyaki steamed toasted roasted baked balsamic sautéd boiled cured )
arr3 = %w(clams dumplings fritters burger adobo chili curds pizza soup quesadilla)


#Set methods:
#This method takes one array (arr), compares it to another array (used).
#If there is a match the matched element is removed from arr.
#It is used here to remove already selected words so that there is no repetition
#in the menu.
def remove (arr, used)
  used.each do |n|
    if arr.include?(n.to_s)
      arr.delete(n.to_s)
    end
  end
end

#This method test if an inputed value is an interger between upper and lower bounds.
#upper_bound and lower_bound must be integers, otherwise this breaks.
def valid_int (input, lower_bound, upper_bound)
  valid_array= Array (lower_bound..upper_bound)
  s_valid_array= valid_array.map(&:to_s)
  s_valid_array[2]
  x=0
  while x==0
    if s_valid_array.include?(input)
      x=1
      return input
    else
      puts "Error: Please enter an integer between #{lower_bound} and #{upper_bound}"
      input = gets.chomp!
    end
  end
end

#Main script.
#Ask user how many food items they want on their menu.
#The user will be stuck here until they can follow directions.
#possible improvment would be to have an abort option that stops program
#if user can not enter a valid number.
puts "This menu can supply up to 10 items!  How many would you like?"
num_items = gets.chomp!
num_items= valid_int(num_items, 1, 10)
num_items= num_items.to_i

#Main loop that makes the menu.
puts "GRUB HUB"
puts "---Menu---"
num_items.times do |n|
  new_item = "#{arr1[rand(arr1.length)]} #{arr2[rand(arr2.length)]} #{arr3[rand(arr2.length)]}"
  #new_item = "#{arr1[rand(n+9-(n*2))]} #{arr2[rand(n+9-(n*2))]} #{arr3[rand(n+9-(n*2))]}"
  #first did it as above but I think it is better to not hard code it incase the library changes.
  puts "#{n+1}. #{new_item}"
  used_items= new_item.split(" ")
  remove(arr1, used_items)
  remove(arr2, used_items)
  remove(arr3, used_items)
end


