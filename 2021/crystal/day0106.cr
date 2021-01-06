#
# Author: Loading BG#7962
#

def average_char(string)
    (string.chars.map(&.ord).sum / string.size).to_i.chr
end

def space(sentence)
    sentence[0] + sentence[1..].gsub(/([A-Z])/, " \\1").downcase
end

def sort(sentence)
    sentence.split.sort { |s1, s2| average_char(s1) <=> average_char(s2) }
end

puts "averageChar #1: #{average_char "Hello"}"
puts "averageChar #2: #{average_char "Yes"}"
puts "averageChar #3: #{average_char "aaaa"}"
puts "----------"
puts "space #1: #{space "HelloWorld!"}"
puts "space #2: #{space "HowAreYou?"}"
puts "space #3: #{space "Example"}"
puts "space #4: #{space "Simple,Right?"}"
puts "----------"
puts "sort #1: #{sort "Hello Yes aaaa"}"
