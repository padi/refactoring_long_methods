# Inline Temp
#
# temp = temporary/local variable
#
# Problem: you have a temp that
# is assigned to a simple expression
# once
# (and the temp is getting in
# the way of other refactorings)
#
# Solution: Replace all references
# to that variable w/ the expression

# before
def expensive?
  base_price = an_order.base_price
  base_price > 1000
end

# after
def expensive?
  an_order.base_price > 1000
end
