# class Song
#   attr_accessor :name, :duration
#
#   def initialize(name, duration)
#     @name = name
#     @duration = duration
#   end
#
# end
#
# song1 = Song.new('show must go on', 6)
# puts song1.name
# puts song1.duration
#
# class Country
#   attr_reader :name, :airports
#
#   def initialize(name)
#     @name = name
#     @airports = []
#   end
#
#   def add_airport(airport)
#     @airports << airport
#   end
# end
#
# class Airport
#   attr_reader :name, :airplanes
#
#   def initialize(name)
#     @name = name
#     @airplanes = []
#   end
#
#   def add_plane(airplane)
#     @airplanes << airplane
#   end
# end
#
# class Airplane
#   attr_reader :model
#
#   def initialize(model)
#     @model = model
#   end
# end
#
# country1 = Country.new('India')
# country2 = Country.new('China')
#
# airport1 = Airport.new('Шереметьево')
# airport2 = Airport.new('Дубай')
# airport3 = Airport.new('Гэтвик')
# airport4 = Airport.new('Нарита')
#
# country1.add_airport(airport1)
# country1.add_airport(airport2)
# country2.add_airport(airport3)
# country2.add_airport(airport4)
#
# airplane1 = Airplane.new('Airbus A320')
# airplane2 = Airplane.new('Boeing 737')
# airplane3 = Airplane.new('Embraer E175')
# airplane4 = Airplane.new('Bombardier CRJ900')
# airplane5 = Airplane.new('Boeing 747')
# airplane6 = Airplane.new('Gulfstream G650')
# airplane7 = Airplane.new('Airbus A380')
# airplane8 = Airplane.new('Cessna 172')
#
# airport1.add_plane(airplane1)
# airport1.add_plane(airplane2)
#
# airport2.add_plane(airplane3)
# airport2.add_plane(airplane4)
#
# airport3.add_plane(airplane5)
# airport3.add_plane(airplane6)
#
# airport4.add_plane(airplane7)
# airport4.add_plane(airplane8)
#
# countries = [country1, country2]
#
# countries.each do |count|
#   puts
#   puts "Country #{count.name}"
#   count.airports.each do |air|
#     puts "Airport: #{air.name}"
#     air.airplanes.each do |plan|
#       puts "Model of plane: #{plan.model}"
#     end
#   end
# end

class Artist
  attr_reader :name, :albums

  def initialize(name)
    @name = name
    @albums = []
  end

  def add_album(album)
    @albums << album
  end
end

class Album
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_to_album(song)
    @songs << song
  end
end

class Song
  attr_reader :name, :duration

  def initialize(name,duration)
    @name = name
    @duration = duration
  end
end

ar = Artist.new('oxxy')

a1 = Album.new('золотой')

ar.add_album(a1)

s1 = Song.new('xyq', 5)
s2 = Song.new('poi', 66)
s3 = Song.new('qwe', 33)

a1.add_to_album(s1)
a1.add_to_album(s2)
a1.add_to_album(s3)

puts a1.songs[0].name
puts ar.albums[0].songs[0].name
puts ar.name
puts ar.albums[0].name