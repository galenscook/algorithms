require 'longest_palindromic_substring'

RSpec.describe 'longest palindromic_substring' do
  it 'finds the longest palindromic substring' do
    expect(longest_palindrome('babad')).to eq('bab').or eq('aba')
    expect(longest_palindrome('cbbd')).to eq('bb')
  end
end
