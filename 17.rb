# def mm
#   puts 'ass'
# end
#
# send :mm
# send 'mm'
# def mm(par1)
#   puts par1
# end
#
# send :mm, 1

# def mm(hash)
#   puts hash
# end
#
# mm :x => 1, :y => 2
# send :mm, :x => 1, :y => 2

# class Something
#   attr_accessor :name
#
#   def initialize
#     send("name=", 'Mike')
#   end
# end
#
# s = Something.new
# puts s.name
# puts s.inspect

# class Something
#   attr_accessor :x, :y
#
#   def initialize hash
#     hash.each do |key, value|
#       send("#{key}=", value)
#     end
#   end
# end
#
# s = Something.new :x => 1, :y => 2
# puts s.x
#
# class Something
#   def method_missing(name)
#     puts "calling unknown method #{name}"
#   end
# end
#
# s = Something.new
# puts s.fasfasf

# output = File.open "lesson_7_test.txt", "a"
# output.write "Something\n"
# output.close

# input = File.open("lesson_7_test.txt", "r")
#
# while (line = input.gets)
#   puts line
# end
# input.close
# total = 0
# input = File.open("lesson_17_task.txt", "r", chomp: true)
# while (line = input.gets)
#   arr = line.split(",")
#   value = arr[1].to_i
#   total += value
# end
# input.close
# puts "total #{total}"

puts '===================='

total = 0
input = File.open("lesson_17_task.txt", "r")
6.times do
  line = input.gets
  arr = line.split(",")
  value = arr[1].to_i
  total += value
end

puts "total #{total}"
input.close