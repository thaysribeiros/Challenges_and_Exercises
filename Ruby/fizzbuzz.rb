# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    result = []
    i = 0
    nbr = 1
    while (nbr <= n)
        if (nbr % 3 == 0 && nbr % 5 == 0)
            result[i] = "FizzBuzz"
        elsif (nbr % 3 == 0)
            result[i] = "Fizz"
        elsif (nbr % 5 == 0)
            result[i] = "Buzz"
        else
            result[i] = nbr.to_s
        end
        nbr += 1
        i += 1
    end 
    return result       
end

p fizz_buzz(15)
