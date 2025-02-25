# @param {Integer[]} arr
# @return {Integer}
def num_of_subarrays(arr)
    n = arr.length 

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