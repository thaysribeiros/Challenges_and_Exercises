# @param {Integer} x
# @return {Integer}
def reverse(nbr)
    nbr = nbr.to_s
    if nbr.to_i < 0
      if (nbr.reverse.to_i*-1 > -2147483648 && nbr.reverse.to_i*-1 < 2147483648)
        return nbr.reverse.to_i*-1
      else 
        return 0
      end
    else
      if (nbr.reverse.to_i > -2147483648 && nbr.reverse.to_i < 2147483648)
        return nbr.reverse.to_i
      else 
        return 0
      end
    end
end

nbr = 1534236469
p reverse(nbr)
