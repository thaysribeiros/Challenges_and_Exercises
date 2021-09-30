# @param {Integer[]} array
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(array)
    do_it_again = true
    i = 0
    while do_it_again == true
        i = 0
        do_it_again = false
        while (i < array.length-1)
        if (array[i] > array[i+1])
            array[i], array[i+1] = array[i+1], array[i]
            do_it_again = true
        end
        i += 1
    end
  end
  return array
end

array = [2,0,2,1,1,0]
p sort_colors(array)
