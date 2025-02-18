# @param {String} pattern
# @return {String}
def smallest_number(pattern)
    n = pattern.length 
    curr_num = 1
    result = Array.new(n+1, 0)
    stack = []

    for i in (0..n) do 
        if pattern[i] == 'D'
            stack << i
        else
            result[i] = curr_num 
            curr_num += 1
            while(stack.size > 0) do 
                result[stack.pop] = curr_num
                curr_num += 1 
            end 
        end 
    end 

    return result.join 
end