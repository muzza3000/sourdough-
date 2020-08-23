def bakers_percent_from_mass(flour, water, salt, starter, starter_ratio)
  total_flour = starter_ratio * starter + flour
  total_water = (1.0 - starter_ratio) * starter + water
  percentages =[
    total_flour / total_flour,
    total_water / total_flour,
    salt / total_flour,
  ]
end