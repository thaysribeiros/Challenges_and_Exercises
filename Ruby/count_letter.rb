##
##
## QWASAR.IO -- count_letter
##
##
## @param {String} param_1
##
## @return {string}
##

def letter?(letter)
  letter.match?(/[[:alpha:]]/)
end

def count_letter(str)
    i = 0;
 	str = str.downcase
    result = {}
    while (i < str.length)
        if (letter?(str[i]))
            if result.key?(str[i])
                    result[str[i]] += 1
            else
                    result[str[i]] = 1
            end
        end
        i += 1
    end

    final = ""
    result.each { |key, value| final << "#{value}#{key}, "}
    final.slice!(final.length-2..)
    return final
end
