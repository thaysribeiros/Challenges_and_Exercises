def checkpairs(pair1, pair2)
    i = 0
    j = 1
    if ((pair1[i] == pair2[i] && pair1[j] == pair2[j]) || (pair1[i] == pair2[j] && pair1[j] == pair2[i]))
        return true
    end
    return false
end
    
def number_of_equivalent_domino_pairs(array)

    i = 0
    j = 0
    count = 0

    while (i < array.length)
        j = 0
        while (j < array.length)
            if (j != i)
                if (checkpairs(array[i], array[j]))
                    count += 1
                end
            end
            j += 1
        end
    i += 1
    end
    return count/2
end


dominoes = [[1, 1], [2, 2], [1, 1], [1, 2], [1, 2], [1, 1]]
p number_of_equivalent_domino_pairs(dominoes)
