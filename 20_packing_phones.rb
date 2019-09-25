
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
  layer_info[:phones_in_layer] = (combo[1][0]/combo[0][0]).floor*(combo[1][1]/combo[0][1]).floor* (combo[0][2]).floor
  layer_vols.push(layer_info)
end

# puts layer_vols

box_sides = [32.0, 43.0, 22.1]

grouped_by_box_side = []

box_sides.each do |side|
  new_grouping = {}
  new_grouping[:layers] = []
  layer_vols.each do |layer|
    layer[:box_height] == side ? new_grouping[:layers].push(layer) : next
  end 
  grouped_by_box_side.push(new_grouping)
end

pp grouped_by_box_side

# orientations = phone_dimensions.permutation.to_a

# puts box_volume

# _1_layer_volume = (b[:w]/orientations[0][0]).floor*(b[:l]/orientations[0][1]).floor*orientations[0][2].floor
# _2_layer_volume =  (b[:w]/orientations[1][0]).floor*(b[:l]/orientations[1][1]).floor*orientations[1][2].floor
# _3_layer_volume =  (b[:w]/orientations[2][0]).floor*(b[:l]/orientations[2][1]).floor*orientations[2][2].floor
# _4_layer_volume =  (b[:w]/orientations[3][0]).floor*(b[:l]/orientations[3][1]).floor*orientations[3][2].floor
# _5_layer_volume =  (b[:w]/orientations[4][0]).floor*(b[:l]/orientations[4][1]).floor*orientations[4][2].floor
# _6_layer_volume =  (b[:w]/orientations[5][0]).floor*(b[:l]/orientations[5][1]).floor*orientations[5][2].floor

# puts _1_layer_volume
# puts _2_layer_volume
# puts _3_layer_volume
# puts _4_layer_volume
# puts _5_layer_volume
# puts _6_layer_volume




# formulas = [

#   (b[:w]/p[:w]).floor*(b[:l]/p[:l]).floor*(b[:d]/p[:d]).floor,
  
#   (b[:w]/p[:w]).floor*(b[:l]/p[:d]).floor*(b[:d]/p[:l]).floor,
  
#   (b[:w]/p[:d]).floor*(b[:l]/p[:l]).floor*(b[:d]/p[:w]).floor,
  
#   (b[:w]/p[:l]).floor*(b[:l]/p[:w]).floor*(b[:d]/p[:d]).floor,
  
#   (b[:w]/p[:l]).floor*(b[:l]/p[:d]).floor*(b[:d]/p[:w]).floor,
  
#   (b[:w]/p[:d]).floor*(b[:l]/p[:w]).floor*(b[:d]/p[:l]).floor
#   ]



