##
##
## QWASAR.IO -- print_duplicates
##
##
## @param {Integer[]} param_1
## @param {Integer} param_2
## @param {Integer[]} param_3
## @param {Integer} param_4
##
## @return {integer[]}
##

def print_duplicates(arr_1, size_1, arr_2, size_2)

    result = []
    i = 0; 
    j = 0; 
    while (i < size_1)
        j = 0
        while (j < size_2)
            if (arr_1[i] == arr_2[j])
                result << arr_1[i];
            end
            j+=1
        end
        i+=1
    end
    p result
    return result;
end
=begin
arr1 = [-5,  2, 10, 15, 50, 70, 100, 200, 300, 1200, 5000]
arr2 = [2, 4, 5, 6, 7, 10, 40, 70]
size1 = 11
size2 = 8
p print_duplicates(arr1, size1, arr2, size2)
=end
