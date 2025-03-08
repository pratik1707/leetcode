# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def closest_primes(left, right)
    result = [-1, -1]

    @primes = Array.new(right+1, true )    

    get_primes(right+1 )    

    prime_numbers = []
    #p @primes
    for num in (left..right) do 
        prime_numbers << num if @primes[num]
    end 

    #p prime_numbers 

    return [-1, -1] if prime_numbers.length < 2 

    min_val = Float::INFINITY 

    for i in (0...prime_numbers.length-1) do 
        if prime_numbers[i+1] - prime_numbers[i] < min_val 
            result = [prime_numbers[i], prime_numbers[i+1]]
            min_val = prime_numbers[i+1] - prime_numbers[i]
        end 
    end 

    return result 
end

def get_primes(upper_limit)
    
    @primes[0] = false 
    @primes[1] = false 
    
    num_root = Math.sqrt(upper_limit)
    
    for i in (2..num_root) do 
        if @primes[i]
            multiple = i*2
            while(multiple <= upper_limit) do 
                @primes[multiple] = false 
                multiple += i 
            end 
        end 
    end 

end 