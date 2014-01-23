# Replace Method w/ Method Object
#
# Problem:
# You have a long method that uses local variables
# in such a way that you cannot use extract method
#
# e.g. you don't want to pass local variables over and over
#
# Solution:
# Turn the method into its own object
# so that all local variables become
# instance variables on that object.
#
# Then decompose using other methods

require_relative './xyz_file'
module XYZService
  # LOTS OF CODE

  def self.xyz_filename(target)
    XYZFile.new(target).name
  end

  def self.something(a,b,c,d,e,f,g)
    puts 'hello'
  end

  # LOTS OF CODE
end
