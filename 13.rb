# @lists = {}
#
# def add_person(name, age)
#   puts "exists" if @lists[name]
#   @lists[name] = age
# end
#
# def show_hash
#   @lists.each_pair do |k,v|
#     puts "name #{k} age #{v}"
#   end
# end
#
# loop do
#
#   puts 'name'
#   name = gets.chomp
#
#   if name == ''
#     show_hash
#     break
#   end
#
#   puts 'age'
#   age = gets.to_i
#
#   add_person name, age
#
# end

#=====================================================================================================
#
# @lists = {}
#
# def add_person(options)
#   puts "exists" if @lists[options[:name]]
#   @lists[options[:name]] = options[:age]
# end
#
# def show_hash
#   @lists.each_pair do |k, v|
#     puts "name #{k} age #{v}"
#   end
# end
#
# loop do
#
#   puts 'name'
#   name = gets.chomp
#
#   if name == ''
#     show_hash
#     break
#   end
#
#   puts 'age'
#   age = gets.to_i
#
#   add_person :name => name, :age => age
#
# end
#
#
#
# book1 = {'Mike' => 45, 'Jr' => 66}
#
# book2 = {'Walt' => 77, 'Gus' => 11}
#
# book3 = book1.merge(book2)
#
# def show_book(book)
#   book.each do |k, v|
#     puts "name #{k} age #{v}"
#   end
# end
#
# show_book book1
# puts '================================'
# show_book book2
# puts '================================'
# show_book book3

