# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}

def find_median_sorted_arrays(array_1, array_2)
  total = (array_1 + array_2).sort
  length = total.length

  (total[(length - 1) / 2] + total[length / 2]) / 2.0
end
