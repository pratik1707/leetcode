# @param {String} a
# @param {String} b
# @return {Integer}
def repeated_string_match(a, b)
    # freq_a = a.chars.tally 
    # #freq_b = b.chars.tally 
    
    # for char in b.chars do 
    #     return -1 if !freq_a.has_key?(char)
    # end 

    # max_val = 1

    # for char, count in freq_a do 
    #     if freq_b.has_key?(char)
    #         if count < freq_b[char]
    #             if freq_b[char] % count != 0
    #                 max_val = [max_val, freq_b[char]/count +1].max 
    #             else
    #                 max_val = [max_val, freq_b[char]/count].max 
    #             end 
                
    #         end 
    #     end 
    # end 

    # max_val.times do 
    #     str += a 
    # end 
    str = a 
    count = 1   
    q = b.length/a.length   

    for i in (0...3) do
        return q+i if (a * (q+i)).match(b)
        
    end 

    return -1 
    
end

