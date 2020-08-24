def bakers_percent_from_mass(flour, water, salt, starter, starter_ratio)
  total_flour = starter_ratio * starter + flour
  total_water = (1.0 - starter_ratio) * starter + water
  percentages =[
    total_flour / total_flour,
    total_water / total_flour,
    salt / total_flour,
  ]
end

def baker_bar_chart(bakers_percent)
  print "The baker's percentages are as follows\n\n"

  print "#{'|' * 100} Flour: #{format("%0.02f", bakers_percent[0]*100)}%\n"
  print "#{'|' * (bakers_percent[1] * 100).to_i} Water: #{format("%0.02f", bakers_percent[1]*100)}%\n"
  print "#{'|' * (bakers_percent[2] * 100).to_i} Salt: #{format("%0.02f", bakers_percent[2]*100)}%\n"
  print "\n\n"
