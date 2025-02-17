# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    @total = 2*n

    res = []

    paranthesis_helper(n, 0, [], res)

    return res 
end

def paranthesis_helper(n, i, slate, res)
    #p slate 
    if i == @total and valid_para(slate)
        res << slate.dup.join
        return  
    elsif i >= @total
        return 
    end 

    #n.times do 
        slate << '('
        paranthesis_helper(n, i+1, slate, res)
        slate.pop 
    #end  

    #n.times do 
        slate << ')'
        paranthesis_helper(n, i+1, slate, res)
        slate.pop 
    #end  

end 

def valid_para(arr)
    stack = []

    for char in arr do 
        if char == '('
            stack << char
        else
            return false if stack.size == 0 or stack.pop != '('
        end 
    end 

    return stack.size == 0
end 