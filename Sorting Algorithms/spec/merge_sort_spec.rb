require_relative 'spec_helper'

module SortingAlgorithms
  describe Merge do
    before do
      @numbers_list = RandomListGenerator.random_numbers_list
      @strings_list = RandomListGenerator.random_strings_list
    end

    describe 'when merge sort is applied on numbers list' do
      it 'must sort it correctly' do
        sorted_list = @numbers_list.sort
        Merge.new(@numbers_list).sort.must_equal sorted_list
      end
    end

    describe 'when merge sort is applied on strings list' do
      it 'must sort it correctly' do
        sorted_list = @strings_list.sort
        Merge.new(@strings_list).sort.must_equal sorted_list
      end
    end
  end
end
