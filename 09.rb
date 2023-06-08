# @a = 1


# def get_password
#   @a = 2 
#   print "type password: "
#   gets.chomp
# end

# xx = get_password

# puts "vveden #{xx}"


# puts "a = #{@a}"

# def get_command
#   x = rand(1..4)
#   if x == 1
#     :left
#   elsif x == 2
#     :right
#   elsif x == 3
#     :up
#   else
#     :down
#   end
# end

# command = get_command

# puts "robot moving to #{command}"

# def get_command
# x = [:left, :right, :up, :down].sample
# end

# command = get_command

# puts "robot moving to #{command}"

# puts "aaa" == "aaa"
# puts :aaa == :aaa

arr = []




while true
  puts 'enter ur favorite color'
  color = gets.strip
  if color == 'stop'
    puts arr.reverse.uniq
    exit
  end
  arr << color
end
