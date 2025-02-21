# @param {String} s
# @return {String[]}
def restore_ip_addresses(s)
    res = []

    n = s.length 

    ip_address_helper(s, 0, [], res, n, 0)

    return res 
end

def ip_address_helper(s, i, slate, res, n, dots)     
    return if dots > 4

    if i == n and dots == 4    
        #p slate
        #if valid_solution?(slate)
            res << slate.dup.join('.')             
        #end 
        return
    end 

    for j in (1..3) do     
        next if i+j > s.length  
        next if s[i...i+j].length != 1 and s[i] == '0'  
        next if s[i...i+j].to_i > 255 
        slate  << s[i...i+j]
        
        ip_address_helper(s, i+j, slate, res, n, dots+1)
        slate.pop
    end 
end 

def valid_solution?(arr)
    
end 