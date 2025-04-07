# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
    word_map = {}
    n = s.length 

    for word in word_dict do 
        word_map[word] = true 
    end 

    table = Array.new(n+1, false)
    table[0] = true 

    for i in (0...s.length) do 
        for j in (0..i) do 
            
            if word_map.has_key?(s[j..i]) and table[j]
                table[i+1] = true 
            end  
        end 
    end 

    return table[n] 
end