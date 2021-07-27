##
##
## QWASAR.IO -- brackets
##
##
## @param {String} param_1
##
## @return {integer}
##

def brackets(input)

    opening = ["(", "[", "{"]
    closing = [")", "]", "}"]
    hash_map = {")" => "(", "]" => "[", "}" => "{"}
    stack = []
    index = 0
    while (index < input.length)
        if opening.include?(input[index])
            stack.push(input[index])
        elsif closing.include?(input[index])
          last_opening = stack.pop
            if last_opening != hash_map[input[index]]
                return 0
            end
        end
        index += 1
    end
    return 1
end
