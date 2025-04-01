# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    result = -1

    n = needle.length 

    return -1 if !(haystack.match(needle))

    i = 0 
    j = n-1 

    while(j < haystack.length) do 
        return i if haystack[i..j] == needle
        i += 1
        j += 1 
    end 

    return -1 
end