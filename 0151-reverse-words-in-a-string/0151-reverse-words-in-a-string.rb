# @param {String} s
# @return {String}
def reverse_words(s)
    s.strip! 

    n = s.length 

    s = s.split

    p s  

    i = 0 
    j = n-1 

    while(i < j) do 
        s[i], s[j] = s[j], s[i]
        i += 1
        j -= 1 

    end 

    return s.join(' ').strip  
end