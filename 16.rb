# class Manager
#   def self.say_hi
#     puts 'hi!'
#   end
# end
#
# class Hipster
#   def self.say_hi
#     puts 'hiiiiiiiiiiiiiii, yo!'
#   end
# end
#
# class Jessie_Pinkman
#   def self.say_hi
#     puts 'hi, bitch!'
#   end
# end
#
# Manager.say_hi
# Hipster.say_hi
# Jessie_Pinkman.say_hi
#
# def run_5_times
#   x = 0
#   while x < 5
#     yield
#     x += 1
#   end
# end
#
# run_5_times { puts 'some'}

# say_hi = lambda {puts 'hi'}
# say_bye = lambda {puts 'bye'}
#
# week = [say_hi, say_hi,say_hi,say_bye, say_bye, say_bye]
#
# week.each do |f|
#   f.call
# end

# sub_10 = lambda do |x|
#   return x - 10
# end
#
# a = sub_10.call 1000
# puts a
#
# money = 0
#
# add_10 = lambda { |x| x + 10 }
# add_20 = lambda { |x| x + 20 }
# sub_5 = lambda { |x| x - 5 }
#
# hh = { 111 => add_10, 222 => add_10, 333 => add_20, 444 => add_20, 555 => add_20, 666 => sub_5, 777 => sub_5, 888 => sub_5, 999 => sub_5 }
#
# loop do
#
#   x = rand(100..999)
#
#   puts "combination #{x}"
#
#   if hh[x]
#     f = hh[x]
#     money = f.call money
#     puts 'lambda called'
#     sleep 0.1
#   else
#     money = sub_5.call money
#   end
#
#   puts "balance #{money}"
# end

module Humans

  class Manager
    def say_hi
      puts 'hi!'
    end
  end

  class Hipster
    def say_hi
      puts 'hiiiiiiiiiiiiiii, yo!'
    end
  end

  class Jessie_Pinkman
    def say_hi
      puts 'hi, bitch!'
    end
  end
end

hipster = Humans::Hipster.new
hipster.say_hi

module Animals
  class Dog
  end

  class Cat
  end
end

cat = Animals::Dog.new