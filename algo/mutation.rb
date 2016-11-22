# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  # split_word = base_word.split
  # second_split = mutation.split
  # if split_word.index(second_split)
  #   puts true
  # else
  #   puts false
  # end

  base = base_word.chars.sort.join
  puts base
  mut = mutation.chars
  puts mut
  mut.all? { |c| base[c] }
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end