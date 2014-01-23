# Inline Method
# Problem: methods body is just as clear as it's name
#
# Solution: Put the method's body into the body
# of its callers and remove the method
#

# before

def get_rating
  more_than_five_late_deliveries ? 2 : 1
end

def more_than_five_late_deliveries
  @number_of_late_deliveries > 5
end

# after

def get_rating
  @number_of_late_deliveries > 5 ? 2 : 1
end

# Small methods are good,
# only when they
# are actually needed
