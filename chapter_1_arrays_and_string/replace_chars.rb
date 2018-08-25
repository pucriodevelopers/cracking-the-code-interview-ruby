# Write a method to replace all spaces in a string with ‘%20’

require_relative 'utils'

class Characters
  include Utils

  def initialize(string)
    @string = string_to_array(string)
  end

  attr_reader :string

  def replace
    string.each_with_index do |character, index|
      string[index] = '%20' if character == ' ' 
    end

    array_to_string(string)
  end

  private 

    def array_to_string(string)
      Utils.array_to_string(string)
    end

    def string_to_array(string)
      Utils.string_to_array(string)
    end
end
