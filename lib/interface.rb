require "catpix"
require_relative "bakers_percent"

Catpix::print_image "header (Small).png",
  :limit_x => 0.75,
  :limit_y => 0,
  :center_x => false,
  :center_y => false,
  :bg => nil,
  :bg_fill => false,
  :resolution => "high"

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

bakers_percent = bakers_percent_from_mass(flour, water, salt, starter, starter_ratio)

puts '|' * 50 * bakers_percent[1].to_i

print "The baker's percentages are as follows\n\n"

print "#{'|' * 100} Flour: #{format("%0.02f", bakers_percent[0]*100)}%\n"
print "#{'|' * (bakers_percent[1] * 100).to_i} Water: #{format("%0.02f", bakers_percent[1]*100)}%\n"
print "#{'|' * (bakers_percent[2] * 100).to_i} Salt: #{format("%0.02f", bakers_percent[2]*100)}%\n"
print "\n\n"



