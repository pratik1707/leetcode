# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
    
    n = blocks.length 

    i = 0 
    j = k 
    white_count = blocks[i...j].count('W')
    result = white_count
    
    while(j < n) do 
        if blocks[i] == 'W'
            white_count -= 1
        end 
        if blocks[j] == 'W'
            white_count += 1
        end 

        result = [result, white_count].min 

        i += 1
        j += 1
    end 

    return result 
end