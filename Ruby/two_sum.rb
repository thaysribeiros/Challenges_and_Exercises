def two_sum(array, target)
    hash = Hash.new

  array.each_with_index do |val, idx|
    dif = (target - val)
    if hash.key?(dif)
      return idx, hash[dif]
    end
    hash[val] = idx
  end
end

array = [-3,4,3,90]
target = 1
p two_sum(array, target)
