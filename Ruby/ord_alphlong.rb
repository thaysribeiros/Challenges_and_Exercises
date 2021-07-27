##
##
## QWASAR.IO -- ord_alphlong
##
##
## @param {String} param_1
##
## @return {string}
##

def ord_alphlong(str)
  
    str = str.split(" ")

    i = 0
    do_it_again = 1;

    while (i < str.length-1)
        j = 0;
        while (j < str.length-i-1)
            if (str[j].length > str[j+1].length)
                tmp = str[j]
                str[j] = str[j+1]
                str[j+1] = tmp
            end
            if (str[j].length == str[j+1].length)
                if (str[j].downcase > str[j+1].downcase)
                    tmp = str[j]
                    str[j] = str[j+1]
                    str[j+1] = tmp
                end
            end
            j += 1;
        end
        i += 1
    end

    result = {}
    i = 0;
    while (i < str.length)
        if result.key?(str[i].length)
            if (i == str.length-1)
                result[str[i].length] += str[i]
            else
                result[str[i].length] += str[i]+" " 
            end
        else
            if (i == str.length-1)
                result[str[i].length] = str[i]
            else
                result[str[i].length] = str[i]+" "
            end
        end
        i += 1
    end

    final = ""
    result.each { |key, value| final << "#{value}^"}

    resultado = ""
    i = 0
    j = 0
    while (i < final.length-1)
        if (final[i] == " " && final[i+1] == "^")
            i += 1
        else
            resultado[j] = final[i];
            j += 1;
            i += 1;
        end
        
    end
    return resultado
end
