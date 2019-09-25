
# 2. A business called “The Company” created a new phone called the companyPhone that needs packing to send away for sale. The Company needs to know how many phones in their pretty new packaging (rectangular prisms) that measures: with  w 5cm, l 7.4cm, and d 4cm we can fit into a box that is 32cm wide,  43cm long and 22.1cm high.   (think about writing some pseudo code first that steps through all the commands you need to write. Keep it as simple as you can.

p = { w:5.0, l:7.4, d:4.0}
b = { w:32.0, l:43.0, d:22.1}

box_volume = (32.0 * 43.0) * 22.1

phone_dimensions = [5.0, 7.4, 4.0]
box_dimensions = [32.0, 43.0, 22.1]

phone_combos = phone_dimensions.permutation.to_a
box_combos = box_dimensions.permutation.to_a

total_combos = phone_combos.product(box_combos)

layer_vols = []
total_combos.each do |combo|
  layer_info = {}
  layer_info[:box_height] = combo[1][2]
  layer_info[:phone_height] = combo[0][2]
  layer_info[:dimensions] = combo[0][0],combo[0][1],combo[0][2],combo[1][0],combo[1][1],combo[1][2]
  no_in_layer = (combo[1][0]/combo[0][0]).floor * (combo[1][1]/combo[0][1]).floor
  layer_info[:phones_in_layer] = no_in_layer
  layer_info[:ratio] = (no_in_layer/combo[0][2])
  layer_vols.push(layer_info)
end

box_sides = [32.0, 43.0, 22.1]

grouped_by_box_side = []

box_sides.each do |side|
  new_grouping = {}
  new_grouping[:"#{side}"] = []
  layer_vols.each do |layer|
    layer[:box_height] == side ? new_grouping[:"#{side}"].push(layer) : next
  end 
  grouped_by_box_side.push(new_grouping)
end


puts grouped_by_box_side[0][:"32.0"]
puts '......'
puts grouped_by_box_side[1][:"43.0"]
puts '......'
puts grouped_by_box_side[2][:"22.1"]

# (64*2) + 40 = 168
# 2 * {:box_height=>22.1, :phone_height=>7.4, :dimensions=>[4.0, 5.0, 7.4, 32.0, 43.0, 22.1], :phones_in_layer=>64, :ratio=>8.648648648648647}
# 1 * {:box_height=>22.1, :phone_height=>5.0, :dimensions=>[4.0, 7.4, 5.0, 32.0, 43.0, 22.1], :phones_in_layer=>40, :ratio=>8.0}