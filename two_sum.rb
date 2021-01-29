# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  for i in (0..nums.length-1)
    for j in (0..nums.length-1)
      if nums[j] == target - nums[i]
        return i, j
      end
    end
  end
end
