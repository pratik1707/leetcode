# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
    m = text1.length
    n = text2.length 

    table = Array.new(m+1){Array.new(n+1, 0)}

    for i in (1..m) do 
        for j in (1..n) do 
            if text1[i-1] == text2[j-1]
                table[i][j] = 1 + table[i-1][j-1]
            else
                table[i][j] = [table[i][j-1], table[i-1][j]].max 
            end 
        end 
    end 

    return table[m][n] 
end