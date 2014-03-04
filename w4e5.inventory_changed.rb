old_inventory_list = File.read('old-inventory.txt').split("\n").sort
new_inventory_list = File.read('new-inventory.txt').split("\n").sort
# puts new_inventory_list.class

changed = new_inventory_list - old_inventory_list
# puts "\n\n#{changed}\n\n"
if changed == ""
  puts "\n\nInventory unchanged!"
else
  puts "\nFiles added since last inventory:\n\n"
  puts changed
end

puts "\n\nOld inventory list\n\n:"
puts old_inventory_list
puts "\nNew inventory list\n\n:"
puts new_inventory_list