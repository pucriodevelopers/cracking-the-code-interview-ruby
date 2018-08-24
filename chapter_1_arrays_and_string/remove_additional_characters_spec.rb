require_relative 'remove_additional_characters'

RSpec.describe Characters do
  subject { described_class.new(string) }

  context 'given changeable params' do
    let(:string) { 'stringstringstringstring' }

    it 'should remove the duplications' do
      expect(subject.remove_duplications).to eq('string')
    end
  end
  
  context 'given unchangable params' do
    let(:string) { 'string' }
    
    it 'should not remove the duplications' do
      expect(subject.remove_duplications).to eq('string')
    end
  end
end
