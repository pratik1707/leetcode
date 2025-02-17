# @param {Integer} n
# @return {Integer}
def punishment_number(n)
    result = 0 

    for i in (1..n) do 
        square = i*i
        #p square         
        square = square.to_s         
        
        if find_partitions(square, i, 0, square.length, 0 )               
            result += square.to_i 
        end          
    end 

    return result 
end

def find_partitions(square, target, index, n, curr_sum)
    # 100 
    # [1, 0, 0]
    if index == n 
        return curr_sum == target 
    end 
    if curr_sum > target 
        return false 
    end 

    p_found = false 
    # 1, 296
    # 2, 
    # 9
    # 6

    for j in (index...n) do 
        str_num = square[index..j]

        sum = str_num.to_i

        p_found = p_found || find_partitions(square, target, j+1, n, curr_sum + sum)

        #p p_found 

        return true if p_found 
             
    end 

    return false 

    
end 