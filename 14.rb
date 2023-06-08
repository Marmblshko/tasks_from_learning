# class Animal
#
#   def run
#     @name = 'dog'
#     puts "#{@name} in running"
#   end
#
#   def stop
#     puts "#{@name} is running"
#   end
# end
#
# a = Animal.new
#
# a.run
# a.stop

# class Book
#
#   @lists = {}
#
#   def add_person(options)
#     puts "exists" if @lists[options[:name]]
#     @lists[options[:name]] = options[:age]
#   end
#
#   def show_hash
#     @lists.each_pair do |k, v|
#       puts "name #{k} age #{v}"
#     end
#   end
#
#   loop do
#
#     puts 'name'
#     name = gets.chomp
#
#     if name == ''
#       show_hash
#       break
#     end
#
#     puts 'age'
#     age = gets.to_i
#
#     options = { :name => name, :age => age }
#
#   end
#
# end
#
#
#
# class Book
#
#   attr_reader :last_person
#
#   def initialize
#     @lists = {}
#     @last_person = ''
#   end
#
#
#
#   def add_person(options)
#     puts "exists" if @lists[options[:name]]
#     @lists[options[:name]] = options[:age]
#     @last_person = options[:name]
#   end
#
#   def show_all
#     @lists.each do |k,v|
#       puts "name #{k} age #{v}"
#     end
#   end
#
#   def aa
#     @lists
#   end
#
# end
#
# n = Book.new
# n.add_person :name => 'ilay', :age => 25
# n.add_person :name => 'stan', :age => 69
# n.add_person :name => 'ray', :age => 28
# n.add_person :name => 'nea', :age => 14
# n.add_person :name => 'ichi', :age => 53
# n.add_person :name => 'naruto', :age => 666
# n.show_all
# puts n.aa
# puts n.last_person
#
# b = Book.new
# b.add_person :name => 'john', :age => 22
# b.add_person :name => 'fedya', :age => 23
#
# b.show_all
# puts b.aa

# class Airplane
#   attr_accessor :model, :altitude, :speed
#
#   def initialize(model)
#     @model = model
#     @speed = 0
#     @altitude = 0
#   end
#
#   def fly
#     @speed = 800
#     @altitude = 10000
#   end
#
#   def land
#     @speed = 0
#     @altitude = 0
#   end
#
#   def moving?
#     @speed > 0
#   end
#
# end
#
# models = ['super-ass', 'Boeing-777', 'lox-666']
#
# airplanes = []
#
# 1000.times do
#   model = models.sample
#   airplane = Airplane.new(model)
#
#   if rand(0..1) == 1
#     airplane.fly
#     airplane.speed = rand(500..1000)
#     airplane.altitude = rand(2000..10000)
#   end
#
#   airplanes << airplane
# end
#
#
# airplanes.each { |plane|  puts "model: #{plane.model} moving? #{plane.moving?} speed: #{plane.speed} altitude: #{plane.altitude}"}

# print 'R S P'
# s = gets.strip.capitalize
#
# if s == 'R'
#   user_choice = :rock
# elsif s == 'S'
#   user_choice = :scissors
# elsif s == 'P'
#   user_choice = :paper
# else
#   puts 'cant understand'
#   exit
# end
#
# arr = [:rock, :scissors, :paper]
#
# computer_choice = arr[rand(0..2)]
#
# puts "user choice #{user_choice}"
#
# puts "computer choice #{computer_choice}"
#
# matrix = [
#   [:rock, :rock, :draw],
#   [:scissors, :scissors, :draw],
#   [:paper, :paper, :draw],
#
#   [:rock, :scissors, :first_win],
#   [:rock, :paper, :second_win],
#
#   [:scissors, :paper, :first_win],
#   [:scissors, :rock, :second_win],
#
#   [:paper, :rock, :first_win],
#   [:paper, :scissors, :second_win]
#
# ]
#
# matrix.each do |item|
#   if item[0] == user_choice && item[1] == computer_choice
#     if item[2] == :first_win
#       puts 'user win'
#     elsif item[2] == :second_win
#       puts 'computer win'
#     end
#     exit
#   end
# end