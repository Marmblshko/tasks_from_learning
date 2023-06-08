# def get_command

#   actions = [:left, :right, :up, :down]
#   x = rand(0...4)
#   actions[x]
# end

# command = get_command

# puts "robot moving to #{command}"


# arr = %w[walt jessi jr hank lidia]

# x = 0

# arr.each do |name|
#   puts " #{x} #{name}"
#   x = x + 1 
# end

# arr2 = arr[1..3]
# arr2[1] = arr[2].capitalize

# puts arr2 

# arr = %w[walt jessi jr hank lidia]
 

# loop do
#   n = 0
# arr.each do |name|
#   n = n + 1
#   puts "number #{n} #{name}"
# end

# puts "whom delete? number"
# x = gets.to_i 

# arr.delete_at x - 1

# puts arr
# end

# @arr = []

# def add_items
#   loop do

#     arr2 = []
  
#   puts "whom to add?"
#   new_name = gets.strip 
  
#   puts "age?"
#   age = gets.strip 
  
#   if new_name == ''
#     break
#   end
  
#   arr2 << new_name
#   arr2 << age
#   @arr << arr2
  
#   end
# end

# def display_items
#   x = 0
#   @arr.each do |item|
#     x = x + 1
#     puts "#{x} #{item[0]} #{item[1]}"
#   end
# end


# def remove_items
#   puts 'what to delete?'
#   x = gets.to_i
#   @arr.delete_at(x - 1)
# end


# add_items
# remove_items
# display_items

#   p @arr


arr = [:rock, :paper, :scissors]

comp_choise = arr[rand(0..2)]

puts 'what u like to chose R S P?' 
s = gets.strip.capitalize

if s == 'R'
  user_choise = :rock
elsif s == 'P'
  user_choise = :paper
elsif s == 'S'
  user_choise = :scissors
else
  puts 'wrong letter'
  exit
end

if user_choise == comp_choise
  puts 'draw'
elsif user_choise == :rock && comp_choise == :scissors
  puts 'player win'
elsif user_choise == :paper && comp_choise == :rock
  puts 'player win'
elsif user_choise == :scissors && comp_choise == :paper
  puts 'player win'
else
  puts 'comp win'
end