=begin
On this challenge my group and I developed two solutions, the first one is more straight to the point and the second one involves more loops. 
=end
def plus_one(array)

    result = array.join()
    result = result.to_i + 1
    result = result.to_s.split("").map(&:to_i)
    p result

end

def plus_one2(array)

    carry = 0

    if (array == [])
        array[0] = 1
        p array
        return 0
    end
    i = 0
    if (i == 0 && array[i] == 9)
            array.insert(0, 0)
            carry = 1
    end
    i = array.length-1
    while (i >= 0)
        if (i == array.length-1 && array[i] >= 1 && array[i] < 9)
            array[i] += 1
        end
        if (array[i] == 9 && i != 0)
            carry = 1
            array[i] = 0
            i -= 1
            next
        end
        if (carry == 1 && array[i] != 9)
            carry = 0
            array[i] += 1
        end
        i -= 1
    end
    p array
end

array1 = [1,2,3,4]
array2 = [3,4,5,9]
array3 = []
array4 = [9,9,9,9]
plus_one(array1)
plus_one(array2)
plus_one(array3)
plus_one(array4)
plus_one2(array1)
plus_one2(array2)
plus_one2(array3)
plus_one2(array4)
