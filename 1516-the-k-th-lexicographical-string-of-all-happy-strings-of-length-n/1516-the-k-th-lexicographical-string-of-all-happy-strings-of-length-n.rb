# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_happy_string(n, k)
    res = []

    @letters = ["a", "b", "c"]

    @count = 0 

    string_helper(n, k, 0, [], res)

    #p res 

    return (k > res.length ? "" : res[k-1])

end

def string_helper(n, k, i, slate, res)
    if slate.length == n
        #p slate 
        res << slate.dup.join   
        return 
    end 

    for char in @letters do 
        next if (slate.size > 0 and slate[-1] == char)
        slate << char
        string_helper(n, k, i+1, slate, res)
        slate.pop 
    end 
    
end 