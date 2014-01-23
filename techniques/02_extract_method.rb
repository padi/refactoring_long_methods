# Extract Method
# Problem: you have a code fragment
# that can be grouped together
#
# Solution: Turn the fragment into a method whose name
# explains the purpose of the method
#

# before
def print_owing(amount)
  print_banner
  puts "name: #{@name}"
  puts "amount: #{amount}"
end

# after
def print_owing(amount)
  print_banner
  print_details(amount)
end

def print_details(amount)
  puts "name: #{@name}"
  puts "amount: #{amount}"
end

# Used 90% of the time,
# in fact, some refactoring
# techniques aim to make
# method extraction easier
#
# Naming extracted methods
# is the hard part

