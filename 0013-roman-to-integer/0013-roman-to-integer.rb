# @param {String} s
# @return {Integer}
def roman_to_int(s)
    romans_map = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100,'D' => 500, 'M' => 1000}

    n = s.length 

    i = 0 
    result = 0 

    while(i < n-1) do 
        if romans_map[s[i+1]] > romans_map[s[i]]
            result += romans_map[s[i+1]] - romans_map[s[i]]
            i += 1 
        else
            result += romans_map[s[i]]
        end 

        i += 1
    end 

    if i == n-1
        result += romans_map[s[i]]
    end 

    return result 
end