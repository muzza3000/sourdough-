require "catpix" # need to run 'gem install catpix' if you want to include the header image
require_relative "bakers_percent"

# header image definition
Catpix::print_image "./header (Small).png",
  :limit_x => 0.75,
  :limit_y => 0,
  :center_x => false,
  :center_y => false,
  :bg => nil,
  :bg_fill => false,
  :resolution => "high"

  repeat = "y"

# User input
until repeat.downcase == "n"
  puts "=================================================================================================================="
  print "Please enter the following in grams\n"
  print "Flour: "
  flour = gets.chomp.to_f
  print "Water: "
  water = gets.chomp.to_f
  print "Salt: "
  salt = gets.chomp.to_f
  print "Starter: "
  starter = gets.chomp.to_f
  print "What percent of your starter is flour? (enter in decimal): "
  starter_ratio = gets.chomp.to_f

  # Calculate the baker's percentages
  bakers_percent = bakers_percent_from_mass(flour, water, salt, starter, starter_ratio)

  # Print the bar chart
  baker_bar_chart(bakers_percent)

  # Repeat the app?
  print "Do you want to run the app again? [y/n] "
  repeat = gets.chomp
end
