# Replace Temp with Query
# Problem:
# You are using a temp variable to hold
# the result of an expression
#
# Solution: Extract that expression into a method

# before
def some_method
  base_price = @quantity * @item_price

  if base_price > 1000
    base_price * 0.95
  else
    base_price * 0.98
  end
end

# after
def some_method
  if base_price > 1000
    base_price * 0.95
  else
    base_price * 0.98
  end
end

def base_price
  @quantity * @item_price
end


