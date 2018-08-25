# Write a method to decide if two strings are anagrams or not
require_relative 'utils'

class Anagram
  include Utils

  def initialize(first_name, second_name)
    @first_name = string_to_array(first_name)
    @second_name = string_to_array(second_name)
  end

  attr_reader :first_name, :second_name

  def is_anagram?
    group_characters(first_name) == group_characters(second_name)
  end

  private 
  
    def group_characters(string)
      Utils.group_characters(string)
    end

    def string_to_array(string)
      Utils.string_to_array(string)
    end
end
