# ПОДСЧЕТ СЛОВ В ФАЙЛЕ
# f = File.open 'lorem.txt', 'r'

# @hh = {}

# def add_to_hash(word)
#   unless word.empty?
#     word.downcase!

#     cnt = @hh[word].to_i
#     cnt += 1

#     @hh[word] = cnt
#   end
# end

# f.each_line do |line|
#   arr = line.split(/\s|\n|\.|,|:|;/)
#   arr.each { |word| add_to_hash(word) }
# end

# f.close

# @hh.each do |k, v|
#   puts "#{v} - #{k}"
# end

# РАЗВОРОТ СТРОКИ
# s = 'Lorem ipsum dolor sit amet.'
# n =s.split(/ /).reverse.join('  ')
# p n

#FIZZBUZZ

1.upto(100).each do |i|
  if i % 3 == 0 && i % 5 == 0
    puts 'fb'
  elsif i % 3 == 0
    puts 'f'
  elsif i % 5 == 0
    puts 'b'
  else 
    puts i
  end
end

# def fizzbuzz(n)
#   (1..n).each do |i|
#     if i % 3 == 0 && i % 5 == 0
#       puts 'fizzbuzz'
#     elsif i % 3 == 0
#       puts 'fizz'
#     elsif i % 5 == 0
#       puts 'buzz'
#     else
#       puts i
#     end
#   end
# end

# fizzbuzz(100)

# Let’s do a few beginner questions.

# Question 1: FizzBuzz
# The classic FizzBuzz question. Though I’ve never been asked it in an actual interview, it’s about as easy as algorithm questions get.

# Instructions:
# Given n, return a list of all integers from 1 through n.
# If an integer is divisible by 3, return “Fizz” instead of the integer.
# If an integer is divisible by 5, return “Buzz” instead of the integer.
# If an integer is divisible by 3 and 5, return “FizzBuzz” instead of the integer.
# Code:
# Copy/paste this into your favorite code editor, and fill in the method to return the desired solution.

# def fizzbuzz()
#   # code
# end
# Tests:
# Run this in the same Ruby file as above to test your code.

# require "minitest/autorun"
# class FizzBuzzTest < MiniTest::Test
#   describe 'FizzBuzz' do
#     before do
#       @result1 = fizzbuzz(100)
#     end
#     describe "n is 100" do
#       it "equals Fizz when values are divisible by 3 " do
#         assert_equal("Fizz", @result1[9-1])
#         refute_equal("Fizz", @result1[100-1])
#        end
#       it "equals Buzz when values are divisible by 5" do
#         assert_equal("Buzz", @result1[25-1])
#         refute_equal("Buzz", @result1[49-1])
#       end
#       it "equals Buzz when values are divisible by 3 and 5" do
#         assert_equal("FizzBuzz", @result1[15-1])
#         refute_equal("FizzBuzz", @result1[10-1])
#       end
#     end
#   end
# end
# A Solution
# This is one solution, but there are absolutely more ways this could be done.

# def fizzbuzz(n)
#   (1...n).map do |x|
#     if (x % 3 == 0) && (x % 5 == 0)
#       "FizzBuzz"
#     elsif x % 3 == 0
#       "Fizz"
#     elsif x % 5 == 0
#       "Buzz"
#     else
#       x
#     end
#   end
# end
# O(n) is the time complexity here because a single loop occurs.

# Question 2: Anagrams
# You may not get this exact question, but there are a tonne of variations which are pretty common.

# It’s also a great example of the golden rule of algorithm questions.

# “If possible, use a hash table”
# - Me

# I joke, but it’s often true.

# Instructions
# Given 2 strings, a and b, return true if they are anagrams.

# Strings are anagrams if their characters can be rearranged to form each other, without adding or removing any characters.

# Code
# Modify this method so it returns the desired answer.

# def anagrams(a, b)
#   # code
# end
# Tests
# require "minitest/autorun"
# class AnagramTest < MiniTest::Test
#   describe 'Anagram' do
   
#     it "returns true for anagrams" do
#       assert_equal(true, anagrams("dwor", "drow"))
#       assert_equal(true, anagrams("racecar", "racecar"))
#     end
#     it "returns false for non-anagrams" do
#       assert_equal(false, anagrams("dog", "dogg"))
#       assert_equal(false, anagrams("potato", "tomato"))
#     end  
   
#   end
# end
# A solution
# Again, this is just one solution.

# def anagrams(a, b) 
#   a_hash = string_to_char_hash(a)
#   b_hash = string_to_char_hash(b)
#   a_hash == b_hash
# end
# def string_to_char_hash(str)
#   str_hash = {}
#   str.chars.each do |c|
#     if str_hash.include?(c)
#       str_hash[c] += 1
#     else
#       str_hash[c] = 1
#     end
#   end
#   str_hash
# end
# Note I defined a 2nd helper method to avoid writing the same code multiple times.

# Questions 3: Find the added word
# Instructions:
# Given 2 sentences as strings, s1 and s2, where s2 contains one more word than the first, return the added word.

# Code
# def word_added(s1, s2)
#   # code
# end
# Tests
# require "minitest/autorun"
# class WordAddedTest < MiniTest::Test
#   describe 'WordAdded' do
#     it "returns the word added" do
#       assert_equal("sly", word_added("There once was a fox", "There once was a sly fox"))
#       assert_equal("every", word_added("every good coder", "every every good coder"))
#       assert_equal("potato", word_added("Peter piper picked a", "Peter piper picked a potato"))
#     end
#   end
# end
# A solution
# def word_added(s1, s2)
#   arr1 = s1.split(' ')
#   arr2 = s2.split(' ')
#   h1 = arr_to_hash(arr1)
#   h2 = arr_to_hash(arr2)
 
#   return (h2.to_a - h1.to_a).to_h.keys[0]
# end
# def arr_to_hash(arr)
#   h = {}
#   arr.each do |x|
#     if h.include?(x)
#       h[x] += 1
#     else
#       h[x] = 1
#     end
#   end
#   h
# end
# Note that I again defined a helper method to avoid writing the same code twice.