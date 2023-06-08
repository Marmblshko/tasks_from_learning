# 10.upto(20) do |i|
#   puts i 
# end

# puts "-" * 80

# 20.downto(10) do |i|
#   puts i 
# end


# 10.upto(20) do |i|
#   i.times do 
#     puts "Это я #{i}"
#   end
# end

# x = 0

# 1.times do 
#   1000.times do 
#     x = x + 1
#   end
# end

# puts x

# 0.upto(10) do |x|
#   puts "Привет #{"!" * x}"
# end

# 10.times do |x|
#   print "привет"  

#   x.times do 
#     print "!"
#   end

#   puts
# end



# puts 'сколько откладываем'
# amount = gets.to_i
# puts 'сколько месяцев'
# months = gets.to_i

# all = 0

# 1.upto(months) do |x|
#   all = all + amount
#   puts "накопления за #{x} = #{all}"
# end

# 10.times do 
#   puts rand 10
# end


# 100000.times { print rand(30..120).chr }


# print "input"
# str = gets.chomp 

# 10.times do 
#   str.size.times do |x|
#     print str[x]
#     d = (1+rand(30)).to_f / 100
#     sleep d 
#     print '-'
#   end

#   print " "
# end


puts 'Сколько лет будем копить: '
years = gets.to_i
puts 'Какую сумму будем откладывать в месяц: '
amount = gets.to_i

all = 0

1.upto(years) do |n|
  1.upto(12) do |x|
    all = all + amount
    puts "Год #{n} месяц #{x}, отложено: #{all}"
  end
end