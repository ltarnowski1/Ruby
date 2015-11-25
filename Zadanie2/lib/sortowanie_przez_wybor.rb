def wsort!(*list)
  if list.empty?
    return raise 'Array is empty'
  elsif list.length == 1
    return raise 'Nothing to sort'
  else
    for i in 0...(list.size - 1)
      min = i
      for j in (i+1)...(list.size)
        if list[j] <= list[min]
          min = j
        end
        list[i], list[min] = list[min], list[i]
      end
    end
    return list
  end
end

