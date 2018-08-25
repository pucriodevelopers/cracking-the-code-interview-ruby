require_relative 'anagram'

RSpec.describe Anagram do 
  context 'given two words that are anagram' do
    subject { described_class.new('asd', 'dsa') }

    it 'returns true' do
      expect(subject.is_anagram?).to be_truthy
    end
  end
  
  context 'given two words that are not anagram' do
    subject { described_class.new('asda', 'dsa') }

    it 'returns false' do
      expect(subject.is_anagram?).to be_falsey
    end
  end
end
