require_relative '../insertion_sort'

RSpec.describe 'Insertion sort' do
  before do
    @unsorted = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
  end

  it 'sorts a given randomized array' do
    sorted = InsertionSort.sort(@unsorted)
    expect(sorted).to eq(@unsorted.sort)
  end
end