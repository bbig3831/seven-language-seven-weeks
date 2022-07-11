# Code for Ruby day 2
# Accessing files with and without code blocks
f = File.open('object_60.txt', 'r')
data = f.read
puts data
f.close

File.open('object_60.txt', 'r') do |f|
  data = f.read
  puts data
end

# Translate hash to array: hash.to_a
stuff = {:array=>[1,2,3], :string=>'Hi, mom!'}
stuff.to_a

# Transalte array to hash: array.to_h
[[0,1], [2,3]].to_h

# Can you iterate through a hash? Yes, .each, .each_pair, etc.
stuff.each {|k, v| puts "#{k}, #{v}"}
stuff.each_pair {|k, v| puts "#{k}, #{v}"}
stuff.each_key {|k| puts "#{k}"}
stuff.each_value {|v| puts "#{v}"}

# Exercises
#
arr = (1..16).to_a
arr.each_slice(4) {|obj| p obj}
