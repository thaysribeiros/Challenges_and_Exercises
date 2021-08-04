def is_power_of_2(nbr)
   i = 0
    result = 1
    if (nbr % 2 != 0)
        return 0
    end
    while (i < nbr)
        result *= 2
        if (result == nbr)
            return 1
        end
        i += 1
    end
    return 0
end

p is_power_of_2(4294967295)
