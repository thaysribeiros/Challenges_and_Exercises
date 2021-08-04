##
##
## QWASAR.IO -- alpha_mirror
##
##
## @param {String} param_1
##
## @return {string}
##
=begin
'a' -> 'z'
'M' -> 'N'
...
[a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, i, z]

(ASCII VALUE of last minuscule letter) 122 - letter -> index - position on the map_array
(ASCII VALUE of last maiscule letter)  90 - letter -> index - position on map_array

a b c d e f g h i j k l m
z y x w v u t s r q p o n

A B C D E F G H I J K L M
N O P Q R S T U V W X Y Z

=end

def alpha_mirror(str)

    my_map1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    my_map2 = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    result = ""
    i = 0

    while(i < str.length)
        if (str[i] >= 'a' && str[i] <= 'z')
            result << my_map1[122-(str[i].ord)]
        elsif (str[i] >= 'A' && str[i] <= 'Z')
            result << my_map2[90-(str[i].ord)]
        else 
            result << str[i]
        end
        i += 1
    end
    return result
end

str = "Baby Yoda ROCKS!"
str2 = "ABC"
puts alpha_mirror(str)
puts alpha_mirror(str2)
