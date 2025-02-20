# @param {String} s
# @param {String[]} word_dict
# @return {String[]}
def word_break(s, word_dict)
    n = s.length 
    table = Array.new(n+1, false)
    table[0] = true 
    word_set = word_dict.to_set 

    for i in (1..n) do 
        for j in (0...i) do      
            
            if word_set.include?(s[j...i] ) and table[j]
            #p s[j...i]
                table[i] = true 
            end 
        end 
    end 
    # [true,false,false,true,true,false,false,true,false,false,true]
    # ["cat","cats","and","sand","dog"]
    p table 
    res = []
    build_words(word_dict, s, table, res, [], 0, n)

    return res 
end

def build_words(word_dict, s, table, res, slate, i, n)
    if i == n        
        res << slate.dup.join(" ") 
        return 
    end 


    for j in (i+1..n) do 
        if word_dict.include?(s[i...j]) and table[j]
            slate << s[i...j]
            build_words(word_dict, s, table, res, slate, j, n)
            slate.pop 
        end 
    end 
end 