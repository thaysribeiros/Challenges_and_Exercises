def simplify_path(path)
    result = []
    array = path.split('/')
    array.each do |elem|
        if (elem != "" && elem != "." && elem != ".." && elem != "/")
            result.push(elem)
        end
        if (elem == "..")
            result.pop
        end
    end
    return "/" + result.join('/')
end

path = "/a/./b/../../c/"
p simplify_path(path)
