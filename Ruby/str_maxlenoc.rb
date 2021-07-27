##
##
## QWASAR.IO -- str_maxlenoc
##
##
## @param {String[]} param_1
## @param {Integer} param_2
##
## @return {string}
##

def array_contain(array, contain)
    i = 0
    while (i < array.size())
        if array[i].index(contain) == nil
            return false
        end
        i += 1
    end
    return true
end

def str_maxlenoc(array, size)

    smallest_string = array.min { |s1, s2| s1.size <=> s2.size}
    future_result_string = ""
    index = 0 

    while (index < smallest_string.size)
        jndex = index
        result = ""
        while (jndex < smallest_string.size)
            result += smallest_string[jndex]
            if (array_contain(array, result))
                if future_result_string.size < result.size
                    future_result_string = result
                end
            else
                break
            end
            jndex += 1
        end
        index += 1
    end
    return future_result_string
end
