# input = File.new("lesson_18_passwords.txt", "r")
# while (line = input.gets)
#   line.strip!
#   puts line if line.size == 6
# end

# def is_password_weak?(password)
#   file_input = File.open("lesson_18_passwords.txt", "r")
#   while (line = file_input.gets)
#     line.strip!
#     if password.include?(line)
#       return true
#     end
#   end
#   false
# end
#
# puts 'enter ur password'
# my_password = gets.strip
#
# if is_password_weak? my_password
#   puts 'Yr pass is weak'
# else
#   puts 'good'
# end

require 'net/http'
require 'uri'
#
link = URI('http://localhost:4567/')
#
# response = Net::HTTP.get(link)

def is_wrong_password(password)
  link2 = URI('http://localhost:4567/login')
  response2 = Net::HTTP.post_form(link2, :username => 'admin', :password => password).body
  response2.include?('Wrong')
end

# file_input = File.open("lesson_18_passwords6.txt", "r")
# while (line = file_input.gets)
#   line.strip!
#   puts "Trying pass #{line}"
#   if is_wrong_password? line
#     puts 'error'
#   else
#     puts 'found'
#     file_input.close
#     exit
#   end
# end

puts is_wrong_password('secret')