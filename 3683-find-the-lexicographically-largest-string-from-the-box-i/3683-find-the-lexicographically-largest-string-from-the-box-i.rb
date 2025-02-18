# @param {String} word
# @param {Integer} num_friends
# @return {String}
def answer_string(word, num_friends)
    res = ''
    return word if num_friends == 1
    n = word.length 
    m = n - num_friends + 1 #(largest split can be at max n - num_friends + 1) 

    for i in (0...n) do 
        curr = [n, i+m].min 
        
        res = [res, word[i...curr]].max 
    end 

    return res 
end