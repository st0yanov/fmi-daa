module InsertionSort
  def insertion_sort(array)
    (0..(array.length - 1)).each do |i|
      next if i == 0

      current_item = array[i]
      (i - 1).downto(0).each do |k|
        if current_item < array[k]
          array[k + 1] = array[k]
          array[0] = current_item if k == 0
        else
          array[k + 1] = current_item
          break
        end
      end
    end

    array
  end
end
