require_relative 'base'

module SortingAlgorithms

  class Merge < Base

    def sort
      return list if list.length == 1

      l1 = Merge.new(list[0..(list.length / 2) - 1]).sort
      l2 = Merge.new(list[(list.length / 2)..list.length]).sort

      return merge(l1, l2)
    end

    private

    def merge(a, b)
      c = []

      until a.empty? or b.empty?
        if a[0] > b[0]
          c << b[0]
          b.delete_at(0)
        else
          c << a[0]
          a.delete_at(0)
        end
      end

      until a.empty?
        c << a[0]
        a.delete_at(0)
      end

      until b.empty?
        c << b[0]
        b.delete_at(0)
      end

      c
    end

  end

end
