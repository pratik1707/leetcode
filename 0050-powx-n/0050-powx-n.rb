# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
    
    return 1 if n == 0

    return x if n == 1 

    n_is_negative = n.negative?

    n = n.abs 

    value = my_pow(x, n/2)

    if n.odd?
        power = (x* value * value)
    else
        power = (value * value)
    end 

    if n_is_negative
        return 1.to_f/power.to_f
    else
        return power.to_f 
    end 
    
end