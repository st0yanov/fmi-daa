require_relative '../spec_helper'
require 'minitest/benchmark'

describe 'Sorting Algorithms Benchmark' do
  bench_range { bench_exp(10, 10000) << 25000 }

  before do
    @sort_targets = {}
    self.class.bench_range.each do |n|
      @sort_targets[n] = RandomListGenerator.random_numbers_list(n)
    end
  end

  bench 'Insertion Sort' do
    assert_performance_power 0.85 do |n|
      SortingAlgorithms::Insertion.new(@sort_targets[n]).sort
    end
  end

  bench 'Merge Sort' do
    assert_performance_power 0.99 do |n|
      SortingAlgorithms::Merge.new(@sort_targets[n]).sort
    end
  end

end
