require_relative 'replace_chars'

RSpec.describe Characters do
  subject { described_class.new('strin g') }

  it 'should replace spaces' do
    expect(subject.replace).to eq('strin%20g')
  end
end