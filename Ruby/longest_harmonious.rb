def largest_harmonious(array)
  freq = Hash.new
  cur_sol = 0
  array.each do |val|
    if freq.key?(val)
      freq[val] += 1
    else
      freq[val] = 1
    end
  end
  freq = freq.sort
  freq.zip(freq[1, freq.length]).each do |elem, n_elem|
    if !n_elem || elem[0] - n_elem[0] != -1
      next
    else
      if elem[1] + n_elem[1] > cur_sol
        cur_sol = elem[1] + n_elem[1]
      end
    end
  end
  cur_sol
end

p largest_harmonious([1,3,2,2,5,2,3,7])
p largest_harmonious([1,2,3,4])
