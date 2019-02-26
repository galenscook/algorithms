require 'sum'

RSpec.describe 'sum' do
  it 'provides the sum of the two numbers given' do
    expect(sum(1, 2)).to eq(3)
  end
end
