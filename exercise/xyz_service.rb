# Replace Method w/ Method Object
#
# Problem:
# You have a long method that uses local variables
# in such a way that you cannot use extract method
#
# Solution:
# Turn the method into its own object
# so that all local variables become
# instance variables on that object.
#
# Then decompose using other methods

module XYZService
  # LOTS OF CODE

  def self.xyz_filename(target)
    # File format:
    # [day of month zero-padded][three-letter prefix] \
    # _[kind]_[age_if_kind_personal]_[target.id] \
    # _[8 random chars]_[10 first chars of title].jpg
    filename = "#{target.publish_on.strftime("%d")}"
    filename << "#{target.xyz_category_prefix}"
    filename << "#{target.kind.gsub("_", "")}"
    filename << "_%03d" % (target.age || 0) if target.personal?
    filename << "_#{target.id.to_s}"
    filename << "_#{Digest::SHA1.hexdigest(rand(10000).to_s)[0,8]}"
    truncated_title = target.title.gsub(/[^\[a-z\]]/i, '').downcase
    truncate_to = truncated_title.length > 9 ? 9 : truncated_title.length
    filename << "_#{truncated_title[0..(truncate_to)]}"
    filename << ".jpg"
    return filename
  end

  def self.something(a,b,c,d,e,f,g)
    puts 'hello'
  end

  # LOTS OF CODE
end
