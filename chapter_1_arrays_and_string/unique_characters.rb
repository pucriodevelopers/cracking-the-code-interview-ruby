# Implement an algorithm to determine if a string has all unique 
# characters. What if you can not use additional data structures?
class UniqueCharacters
  def initialize(string)
    @string = string
  end

  attr_reader :string

  def has_unique_chars?
    string_to_array.uniq.count == string_to_array.count
  end

  private 

    def string_to_array
      string.split("")
    end
end

RSpec.describe UniqueCharacters do
  subject { described_class.new(string) }

  context 'given unique character string' do
    let(:string) { 'asd' }

    it 'should return true' do
      expect(subject.has_unique_chars?).to be true
    end
  end

  context 'given not unique character string' do
    let(:string) { 'asda' }

    it 'should return false' do
      expect(subject.has_unique_chars?).to be false
    end
  end
end