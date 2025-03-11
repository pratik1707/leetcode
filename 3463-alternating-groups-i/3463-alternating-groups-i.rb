# @param {Integer[]} colors
# @return {Integer}
def number_of_alternating_groups(colors)
    k = 3 
    for i in (0...k-1) do 
        colors << colors[i]
    end 
    
    n = colors.length 

    left = 0 
    right = 1
    result = 0 

    for right in (1...n) do 
        if colors[right] == colors[right-1]
            left = right             
        end 

        next if (right - left +1 < k) 

        result  += 1 
    end 

    return result 
end