##
##
## QWASAR.IO -- capitalize
##
##
## @param {String} param_1
##
## @return {string}
##

def letter?(letter)
  letter.match?(/[[:alpha:]]/)
end

def capitalize(str)
    i = 0
    result = ""
    while (i < str.length)
        if (str[i] >= 'a' && str[i] <= 'z')
            if (i>0 && (str[i-1] == " ") || i == 0)
                result += str[i].upcase
            else
                result += str[i]
            end
        else
            if (str[i] >= 'A' && str[i] <= 'Z')
                if (i>0 && letter?(str[i-1]) == false)
                    result += str[i].upcase
                elsif (i>0 && letter?(str[i-1]) == true)
                    result += str[i].downcase
                else
                    result += str[i]
                end
            else
                result += str[i]
            end
        end
        i += 1;
    end
    return result
end
