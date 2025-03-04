# @param {Integer} n
# @return {Boolean}
def check_powers_of_three(n)
    @three_map = Hash.new

    power = 0 

    while(3**power < n) do 
        power += 1
    end 



    while(n > 0 and power >=0) do 
        if 3**power <= n
            n -= 3**power
            power -= 1
        else
            power -= 1
        end  


    end 

    return n == 0
    
end
