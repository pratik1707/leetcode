# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    result = ''
    n = strs.length 
    j = 0 

    return strs[0] if n == 1 

    min_length = Float::INFINITY 

    for str in strs do 
        min_length = [min_length, str.length].min 
    end 

    j = 0 
    
    for i in (0...min_length) do 
        char = strs[0][j]
        chars = strs[1...n].collect{|a| a[j]}.uniq 

        if chars.length == 1 and chars[0] == char
            result += char
        else
            return result 
        end 

        j += 1 

    end 

    return result 
end