require_relative 'unique_characters'

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