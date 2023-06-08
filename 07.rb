# puts 'вы довольны своей зарплатой ? Y/N'
# answer = gets.strip.capitalize
# if answer == 'Y'
#   puts 'Good'
# else 
#   puts 'bad'
# end

# puts 'chislo'
# num = gets.to_i 

# 1.upto(100) do |n|
#   x = rand(1..50)
#   puts "играем #{n} раз"
#   if x == num
#     puts 'win'
#   end
# end

# puts 'skolko'
# number = gets.to_i

# if number > 0
#   puts 'otlichno kto-to budet'
# end

# if number == 1
#   puts 'pridet 1'
# end

# if number == 2
#   puts 'pridet 2'
# end

# if number == 3
#   puts 'pridet 3'
# end

# if number == 4
#   puts 'pridet 4'
# end

# if number < 0
#   puts 'error'
#   exit
# end

puts 'skolko let'
age = gets.to_i
puts 'hotite igrat Y/N'
choise = gets.strip.upcase 

if age >= 18 && choise == 'Y'
  puts 'lets play'

  money = 100

  1000.times do

  puts 'vvedite enter ctob nachat'
  gets

  x = rand(0..9)
  y = rand(0..9)
  z = rand(0..9)

  if x == 0 && y == 0 && z == 0
    puts 'balanse obnulen'
    money = 0
  end

  if x == 1 && y == 1 && z == 1
    puts '+10 baks'
    money = money + 10
  end

  if x == 2 && y == 2 && z == 2
    puts '+10 baks'
    money = money + 10
  end
  
  if x == 3 && y == 3 && z == 3
    puts '+10 baks'
    money = money + 10
  end

  if x == 4 && y == 4 && z == 4
    puts '+10 baks'
    money = money + 10
  end

  if x == 5 && y == 5 && z == 5
    puts '+10 baks'
    money = money + 10
  end

  if x == 6 && y == 6 && z == 6
    puts '+10 baks'
    money = money / 2
  end

  if x == 7 && y == 7 && z == 7
    puts '+10 baks'
    money = money - 70
  end

  if x == 8 && y == 8 && z == 8
    puts '+10 baks'
    money = money - 80
  end

  if x == 9 && y == 9 && z == 9
    puts '+10 baks'
    money = money - 90
  end

  if x == 1 && y == 2 && z == 3
    puts '+10 baks'
    money = money + 123
  end

  puts " #{x}\r#{x},      #{y}\r#{y},      #{z}\r#{z}"
  puts "ostatok #{money}"  
  end
end