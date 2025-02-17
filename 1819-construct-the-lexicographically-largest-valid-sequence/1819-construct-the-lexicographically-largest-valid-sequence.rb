# @param {Integer} n
# @return {Integer[]}
def construct_distanced_sequence(n)
    #[n, 2,2,3,1]    
    result = [0] * (2 *n -1)
    number_placed = [false] * (n+1)

    sequence_helper(0, number_placed, result, n)

    return result 
end

def sequence_helper(index, number_placed, result, n)
    
    if index == result.length
        return true 
    end 

    if result[index] != 0
        return sequence_helper(index+1, number_placed, result, n)
    end 

    for curr_num in (n).downto(0) do 
        next if number_placed[curr_num]
        number_placed[curr_num] = true 
        result[index] = curr_num

        if curr_num == 1            
            return true if sequence_helper(index+1, number_placed, result, n)

        elsif index + curr_num < result.length and result[index + curr_num] == 0
            result[index + curr_num] = curr_num
            return true if sequence_helper(index, number_placed, result, n)
            result[index + curr_num] = 0

        end 

        result[index] = 0
        number_placed[curr_num] = false 

    end 

    return false 
end 