def insert_sort!(array)
  if array.empty?
    return raise 'Array is empty'
  elsif array.length == 1
    return raise 'Nothing to sort'
  else
    for i in 0...(array.size - 1)
      min = i
      for j in (i+1)...(array.size)
        if array[j] <= array[min]
          min = j
        end
        array[i], array[min] = array[min], array[i]
      end
    end
    return array
  end
end

