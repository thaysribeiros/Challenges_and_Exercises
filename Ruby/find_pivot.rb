##
##
## QWASAR.IO -- find_pivot
##
##
## @param {Integer[]} param_1
## @param {Integer} param_2
##
## @return {integer}
##

def find_pivot(arr, size)
    i = 0
    j = 1
    k = 0
    sum1 = 0
    sum2 = 0

    while j < size
        i = 0
        sum1=0
        sum2=0
        while i < j
            k = j+1
            sum1 += arr[i]            
            i += 1
        end
        while k < size
            sum2 += arr[k]
            k += 1
        end
        if sum1 == sum2
            return j
        end
        j += 1
    end
    return -1
end
