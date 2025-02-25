# @param {Integer[]} arr
# @return {Integer}
def num_of_subarrays(arr)
    n = arr.length 
    # Using dp 
    # The key observation is that if the current element is odd, 
    #it flips the parity of all subarrays ending at the next index: 
    #even subarrays become odd, and odd subarrays become even. 
    #If the element is even, it preserves the parity, meaning even subarrays remain even, and odd subarrays remain odd.

    count = 0 
    mod = (10**9+7)
    dp_odd = [0]*n 
    dp_even = [0]*n

    if arr[0]%2 == 0
        dp_even[0] = 1
    else
        dp_odd[0] = 1
        count += 1 
    end 

    for i in (1...n) do 
        if arr[i]%2 == 0
            dp_odd[i] = dp_odd[i-1]

            dp_even[i] = 1 + dp_even[i-1]
        else
            dp_odd[i] = 1 + dp_even[i-1]

            dp_even[i] = dp_odd[i-1]
        end 

        count += dp_odd[i] % mod
    end 
    
    return count % mod
     
end