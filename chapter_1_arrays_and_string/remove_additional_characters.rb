# Design an algorithm and write code to remove the duplicate 
# characters in a string without using any additional buffer 
# NOTE: One or two additional variables are fine. An extra copy of the array 
# is not FOLLOW UP. Write the test cases for this method
require_relative 'utils'

class Characters
  include Utils

  def initialize(string)
    @string = string
  end

  attr_reader :string

  def remove_duplications
    string_to_array.uniq.join
  end

  private 

    def string_to_array
      @string_to_array ||= Utils.string_to_array(string)
    end
end
