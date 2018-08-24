# Implement an algorithm to determine if a string has all unique 
# characters. What if you can not use additional data structures?
require_relative 'utils'

class UniqueCharacters
  include Utils

  def initialize(string)
    @string = string
  end

  attr_reader :string, :string_to_array

  def has_unique_chars?
    string_to_array.uniq.count == string_to_array.count
  end

  private 

    def string_to_array
      @string_to_array ||= Utils.string_to_array(string)
    end
end
