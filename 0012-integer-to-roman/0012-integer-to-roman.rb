# @param {Integer} num
# @return {String}
def int_to_roman(num)
    str = ''
    
    romans_hash = {1000 => 'M',900 => 'CM',500 => 'D',400 => 'CD',100 => 'C',
     90 => 'XC',50 => 'L',40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V',4 => 'IV',  1 => 'I' }

    romans_hash.keys.each do |i|
        if num >= i
            div = num / i 
            num = num % i 

            str += (romans_hash[i] * div).to_s 
        end 
    end 

    return str 
end