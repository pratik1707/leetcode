# @param {Integer} n
# @return {String}
def count_and_say(n)
    dp = Array.new(n+1)
    dp[0] = '1'
    dp[1] = '11'

    for i in (2...n) do 
        dp[i] = count(dp[i-1])
    end 
    
    return dp[n-1]
end

def count(val)    
    str = ''

    i = 0 
    count = 1

    while(i < val.length) do 
        if i+1 < val.length and val[i+1] == val[i]
            count += 1
        else
            str += count.to_s
            str += val[i]
            count = 1 
        end 
        i += 1
    end 
    
    return str 
end 