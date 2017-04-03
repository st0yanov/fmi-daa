require 'minitest/autorun'

require_relative '../sorting_algorithms'

describe SortingAlgorithms do
  before do
    @array = [6, 5, 3, 1, 8, 7, 2, 4]
  end

  describe 'when insertion sort is applied on array' do
    it 'must sort it correctly' do
      SortingAlgorithms.insertion_sort(@array).must_equal [1, 2, 3, 4, 5, 6, 7, 8]
    end
  end
end
