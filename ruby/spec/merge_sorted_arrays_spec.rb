require 'merge_sorted_arrays'

RSpec.describe 'merge_arrays' do
  it 'returns a single sorted array' do
    expect(merge_arrays([1, 3, 4, 5], [2, 6, 7, 8])).to eq([1, 2, 3, 4, 5, 6, 7, 8])

    expect(merge_arrays([], [1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])

    expect(merge_arrays([1, 4, 45, 63], [])).to eq([1, 4, 45, 63])

    expect(merge_arrays([4, 4, 4, 4, 4, 4, 4], [4, 4, 4, 4, 4, 4, 4])).to eq([
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4,
                                                                               4
                                                                             ])

    expect(merge_arrays([-133, -100, 4, 0], [-2000, 2000])).to eq([-2000, -133, -100, 4, 0, 2000])

    expect(merge_arrays([], [])).to eq([])
  end
end
