# @param {Integer[]} arr
# @return {Integer}
def len_longest_fib_subseq(arr)
    n = arr.length 

    mapping = {}
    result = 0 

    for i in (0...n) do 
        mapping[arr[i]] = i 
    end 

    table = Array.new(n+1){Array.new(n+1, 0)}
    table[0][1] = 2 

    for curr in (2...n) do 
        for prev in (0...curr) do 
            diff = arr[curr] - arr[prev]

            if mapping.has_key?(diff) and diff < arr[prev]                
                index = mapping[diff]
                table[prev][curr] = 1 + table[index][prev]
                result = [result, table[prev][curr]].max 
            else
                table[prev][curr] = 2 
            end 
        end 
    end 

    return result 

    # nums_set = arr.to_set 
    # result = 0 
    # #[1,2,3,4,5,6,7,8]
    # # we take each starting point and try to add next to it and see if the added value is present 
    # # if present we add the next and added value again and keep on counting 


    # for start in (0...n) do 
    #     for ne in (start+1...n) do 
    #         prev = arr[ne]
    #         curr = arr[start] + arr[ne]
    #         count = 2

    #         while(nums_set.include?(curr)) do 
    #             prev, curr = curr, curr + prev 
    #             count += 1
    #             result = [result, count].max 
    #         end 

    #     end 
    # end 

    # return result 

   

    


end