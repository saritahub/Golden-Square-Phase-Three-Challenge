#DiaryEntry can be refactored in two ways
# Example 1
# DiaryEntry = Struct.new(:title, :contents)

#Example 2
# Class DiaryEntry < Struct.new(:title, :contents)
# ##(Optional space for additional methods)
# end

class DiaryEntry
  def initialize(title, contents) # title, contents are both strings
    @title = title
    @contents = contents

  end

  def title
    @title
  end

  def contents
    # Returns the contents as a string
    @contents
  end
end