# @param {Integer[]} colors
# @return {Integer}
def number_of_alternating_groups(colors)
    n = colors.length 
    #alt_array = []  
    result = 0   
    k = 3 
    j = k-1 
    m = j 
    i = 0 
    alt_array = colors[i..j]

    while(i < n) do 
        #p alt_array
        if is_alternate?(alt_array[i..m])
            result += 1 
        end 
        i += 1       
        j += 1
        m += 1 
        if j == n 
            j = 0  
            #p i 
        end 
        alt_array << colors[j]
    end 

    return result 
end

def is_alternate?(array)
    #p array 
    if array[0] == 0        
        for i in (1...array.length) do 
            return false if i.odd? and array[i] == 0
            return false if i.even? and array[i] == 1 
        end 
    else
        for i in (1...array.length) do 
            return false if i.even? and array[i] == 0
            return false if i.odd? and array[i] == 1 
        end 
    end 

    return true 
end