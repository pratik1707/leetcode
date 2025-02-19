# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_happy_string(n, k)
    @res = ''

    @letters = ["a", "b", "c"]

    @count = 0 

    string_helper(n, k, [])

    return @res 
end

def string_helper(n, k, slate)
    if slate.length == n
        @count += 1
        if @count == k
            @res = slate.dup.join  
        end         
          
        return 
    end 

    for char in @letters do 
        next if (slate.size > 0 and slate[-1] == char)
        slate << char
        string_helper(n, k, slate)
        slate.pop 
    end 
    
end 