# Write code to reverse a C-Style String 
# (C-String means that “abcd” is represented as 
# five characters, including the null character)

class ReverseString
  def initialize(string)
    @string = string
  end

  attr_reader :string

  def reverse
    string.reverse
  end
end
