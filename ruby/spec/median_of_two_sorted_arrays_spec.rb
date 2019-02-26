require 'median_of_two_sorted_arrays'

RSpec.describe 'find_median_sorted_arrays' do
  it 'finds the median' do
    expect(find_median_sorted_arrays([1, 3], [2])).to eq(2.0)
    expect(find_median_sorted_arrays([1, 2], [3, 4])).to eq(2.5)
  end
end
