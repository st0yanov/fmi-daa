require_relative 'base'

module SortingAlgorithms

  class Insertion < Base

    def sort
      (0..(list.length - 1)).each do |i|
        next if i == 0

        current_item = list[i]
        (i - 1).downto(0).each do |k|
          if current_item < list[k]
            list[k + 1] = list[k]
            list[0] = current_item if k == 0
          else
            list[k + 1] = current_item
            break
          end
        end
      end

      list
    end

  end

end
