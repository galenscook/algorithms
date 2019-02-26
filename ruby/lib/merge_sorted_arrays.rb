def merge_arrays(arr_1, arr_2)
  merged = []
  index_1 = 0
  index_2 = 0

  while index_1 < arr_1.count && index_2 < arr_2.count
    if arr_1[index_1] < arr_2[index_2]
      merged << arr_1[index_1]
      index_1 += 1
    else
      merged << arr_2[index_2]
      index_2 += 1
    end
  end

  if index_1 < arr_1.count
    merged.concat(arr_1[index_1..-1])
  else
    merged.concat(arr_2[index_2..-1])
  end

  merged
end
