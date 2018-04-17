
# 2. A business called “The Company” created a new phone called the companyPhone that needs packing to send away for sale. The Company needs to know how many phones in their pretty new packaging (rectangular prisms) that measures: with  w 5cm, l 7.4cm, and d 4cm we can fit into a box that is 32cm wide,  43cm long and 22.1cm high.   (think about writing some pseudo code first that steps through all the commands you need to write. Keep it as simple as you can.

=begin

phone: w 5cm x l 7.4cm and d 4cm
box: 32cm wide,  43cm long and 22.1cm high

1. how many can fit in one layer?
     how many whole ls * how many whole ws
how many layers can we have?
     how many whole d can fit in d of box
combined

=end

p = { w:5.0, l:7.4, d:4.0}
b = { w:32.0, l:43.0, d:22.1}

formulas = [


(b[:w]/p[:w]).floor*(b[:l]/p[:l]).floor*(b[:d]/p[:d]).floor,

(b[:w]/p[:w]).floor*(b[:l]/p[:d]).floor*(b[:d]/p[:l]).floor,

(b[:w]/p[:d]).floor*(b[:l]/p[:l]).floor*(b[:d]/p[:w]).floor,

(b[:w]/p[:l]).floor*(b[:l]/p[:w]).floor*(b[:d]/p[:d]).floor,


(b[:w]/p[:l]).floor*(b[:l]/p[:d]).floor*(b[:d]/p[:w]).floor,

(b[:w]/p[:d]).floor*(b[:l]/p[:w]).floor*(b[:d]/p[:l]).floor
]
hn = formulas[0]

tx = {}

if tx[formulas]
  tx[formulas] += 1
else
  tx[formulas] = 1
end
formulas.each do |n|
  if n >= hn
    hn = n
    tx.push(n)

  end

end

puts "You can fit #{hn} phones boxes in a box and there are #{tx.count} solutions."

puts formulas.max
# x = formulas.sort.last
#
# puts formulas.index(x)
#
# puts formulas.max
