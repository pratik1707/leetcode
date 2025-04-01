# @param {String} s
# @return {Integer}
def my_atoi(s)
    s.strip! 
    n = s.length 

    result = 0 

    return 0 if n == 0

    i = 0

    if s[0] == '-'
        negative = true 
        i = 1 
    elsif s[0] == '+'
        i = 1 
    end 

    return 0 if s[0] =~ /[a-z]/

    for j in (i...n) do 
        next if s[i] == '0'
        break 
    end 

    return 0 if i == n

    while(i < n) do 
        break if s[i] !~ /[0-9]/

        result += s[i].to_i 
        result *= 10 if i < n-1 and s[i+1] =~ /[0-9]/
        i += 1 
    end 

    p result 

    result = [-1 * result, -2**31].max if negative 
    result = [result, 2**31-1].min 

    return result 

end