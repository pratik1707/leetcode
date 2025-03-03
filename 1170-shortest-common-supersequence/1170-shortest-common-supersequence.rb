# @param {String} str1
# @param {String} str2
# @return {String}
def shortest_common_supersequence(str1, str2)
    m = str1.length
    n = str2.length 
    result = []

    table = Array.new(m+1){Array.new(n+1, 0)}

    for i in (1..m) do 
        for j in (1..n) do 
            if str1[i-1] == str2[j-1]
                table[i][j] = 1 + table[i-1][j-1]
            else
                table[i][j] = [table[i][j-1], table[i-1][j]].max 
            end 
        end 
    end 
    
    i = m
    j = n 

    while(i > 0 and j > 0) do 
        if str1[i-1] == str2[j-1]
            result << str1[i-1]
            i -= 1
            j -= 1
        elsif table[i-1][j] > table[i][j-1]
            result << str1[i-1]
            i -= 1
        else
            result << str2[j-1]
            j -= 1
        end 
    end 

    while(i > 0) do 
        result << str1[i-1]
        i -= 1
    end 

    while(j > 0) do 
        result << str2[j-1]
        j -= 1
    end 

    return result.reverse.join 

end