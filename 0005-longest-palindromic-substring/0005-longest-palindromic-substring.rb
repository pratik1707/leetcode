# @param {String} s
# @return {String}
def longest_palindrome(s)
    @n = s.length 
    
    i = 0 
    @result = ""

    while(i <= @n-1) do 
        is_palindrome(s, i, i)
        is_palindrome(s, i, i+1) if i < @n-1
        i += 1 
    end 

    return @result 
end

def is_palindrome(s, i, j)

    while(i >= 0 and j < @n and s[i] == s[j]) do 
       
        if @result.length == 0 or s[i..j].length > @result.length
            @result = s[i..j]
        end 
        i -= 1
        j += 1 
    end 
end 