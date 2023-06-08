# dictionary = {'dog' => %w[собака собачка], 'cat' => %w[кошка кошечка], 'girl' => %w[девчонка]}
#
# x = 0
# dictionary.each_value do |v|
#   puts v
#   x += v.size
#
# end
# puts x
#
# balance = 100
#
# value = { 111 => 10, 222 => 20, 333 => 30, 444 => 40, 555 => 50, 666 => 60, 777 => 70, 888 => 80, 999 => 90, }
#
# loop do
#
#   puts 'press enter'
#   gets
#
#   a = rand(100..999)
#
#   value.each_pair do |k, v|
#     balance += v if a == k
#
#     puts '=============================================================' if a == k
#   end
#
#   unless value.has_key?(a)
#     balance -= 5
#   end
#
#   puts "balance #{balance}"
#
# end
# мой вариант сверху, по уроку снизу/ а совсем снизу без итерация версия

# balance = 100
#
# value = { 111 => 10, 222 => 20, 333 => 30, 444 => 40, 555 => 50, 666 => 60, 777 => 70, 888 => 80, 999 => 90, }
#
# loop do
#
#   puts 'press enter'
#   gets
#
#   a = rand(100..999)
#
#   value.each_key do |roll|
#     if a == roll
#       balance += value[roll]
#     end
#   end
#
#   unless value.has_key?(a)
#     balance -= 5
#   end
#   puts "balance #{balance}"
#
# end

#====================================================================
#
# balance = 100
# count = 0
# value = { 111 => 10, 222 => 20, 333 => 30, 444 => 40, 555 => 50, 666 => 60, 777 => 70, 888 => 80, 999 => 90 }
#
# loop do
#
#   puts 'press enter'
#
#
#   a = rand(100..999)
#
#   if value[a]
#     balance += value[a]
#     count += 1
#   else
#     balance -= 5
#   end
#
#   puts "balance #{balance}"
#   puts "chislo udachi #{count}"
# end

# map =   [%w[* * *],
#          %w[* * *],
#          %w[* * *]]
#
#
# # loop do
# 5.times do
#   comp_x = rand(0..2)
#   comp_y = rand(0..2)
#
#   map[comp_x][comp_y] = '0'
#
#   map.each do |line|
#     line.each do |el|
#       print el + ' '
#     end
#     print "\n"
#   end
#
#   puts
#   puts 'Ваш ход по Х: '
#   user_x = gets.to_i
#   puts 'Ваш ход по Y: '
#   user_y = gets.to_i
#
#   map[user_x - 1][user_y - 1] = 'X'
#
#
# end

