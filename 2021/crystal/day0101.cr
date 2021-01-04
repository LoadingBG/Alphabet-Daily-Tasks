#
# Author: Loading BG#7962
#

def nth_even(n)
    2 * n - 2
end

def validate_email(email)
    if email =~ /.+@.+\..+/
        true
    else
        false
    end
end

def atbash_letter(l)
    return l unless l.letter?
    if l.ascii_uppercase?
        return ('Z' - l + 'A'.ord).chr
    else
        return ('z' - l + 'a'.ord).chr
    end
end
def atbash(s)
    s.chars.map { |l| atbash_letter l }.reduce "" { |acc, l| acc + l }
end

puts "nth_even #1: #{nth_even 1}"
puts "nth_even #2: #{nth_even 2}"
puts "nth_even #3: #{nth_even 100}"
puts "-----------"
puts "validateEmail #1: #{validate_email "@gmail.com"}"
puts "validateEmail #2: #{validate_email "hello.gmail@com"}"
puts "validateEmail #3: #{validate_email "gmail"}"
puts "validateEmail #4: #{validate_email "hello@gmail"}"
puts "validateEmail #5: #{validate_email "hello@edabit.com"}"
puts "-----------"
puts "atbash #1: #{atbash "apple"}"
puts "atbash #2: #{atbash "Hello world!"}"
puts "atbash #3: #{atbash "Christmas is the 25th of December"}"
