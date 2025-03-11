# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
    # n = s.length
    # table = Array.new(n+1){Array.new(n+1, 0)}

    # for i in (1...n) do
    #     table[i][i] = 1 
    #     for j in (n-1).downto(0) do 
    #         if s[i] == s[j]
    #             table[i][j] = 2+table[i+1][j-1]
    #         else
    #             table[i][j] = [table[i+1][j], table[i][j-1]].max 
    #         end 
    #     end 
    # end 
    # p table 
    # table[n-1][n-2] 
    @memo = {}
    
    return count_palindromic_strings(s, 0, s.length-1)

    return @memo["0_#{s.length-1}"]

    #return @result 
end

def count_palindromic_strings(s, i, j)   
    if @memo.has_key?("#{i}_#{j}")
        return @memo["#{i}_#{j}"]
    end 

    return 0 if i > j 

    return 1 if i == j 

    if s[i] == s[j]
        @memo["#{i}_#{j}"] =  2 + (count_palindromic_strings(s, i+1, j-1))
    else
        @memo["#{i}_#{j}"] =  [count_palindromic_strings(s, i+1, j), count_palindromic_strings(s, i, j-1)].max 
    end 
end 