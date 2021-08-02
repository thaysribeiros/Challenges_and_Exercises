def pattern132(array)

    i = 1
    j = 0
    k = array.length-1

    while (i < array.length)
        j = 0
        while (j < i)
            k = array.length-1
            while (k > i)
                if (array[j] < array[i] && array[k] < array[i])
                    return true
                end
                k -= 1
            end
            j += 1
        end
        i += 1
    end
    return false 
end

array = [-1, 1, 2, 4, 4, 1] 
puts pattern132(array)
