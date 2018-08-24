require_relative 'reverse_string'

RSpec.describe ReverseString do
  subject { described_class.new('string') }

  it 'should reverse a given string' do
    expect(subject.reverse).to eq('gnirts')
  end
end
