# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
    # get the subsets first 
    # for each subset get the permutation (permutation II)
    # count the result 

    subsets = Set.new 

    tiles_subset_helper(tiles, 0, [], subsets, tiles.length )

    #subsets = subsets.uniq 

    @result = Set.new 
    @count = 0 

    subsets.each do |subset|
        if subset.length == 1
            @count += 1
        else            
            permutation_helper(subset)
        end 
    end  

    @count += @result.size 

    return @count 

end

def permutation_helper(subset)
    res = []

    freq = subset.chars.tally 

    p_helper(freq, freq.keys, 0, [], res, subset.length )    

    #@result << res 
end 

def p_helper(freq, arr, i, slate, res, n)
    if i == n    
        #@result.add()   
        @result.add(slate.dup.join)
        return 
    end 

    for j in (0...arr.length) do 
        next if freq[arr[j]] == 0
        freq[arr[j]] -= 1
        slate << arr[j]
        p_helper(freq, arr, i+1, slate, res, n)
        freq[arr[j]] += 1
        slate.pop
    end 
end 

def tiles_subset_helper(tiles, i, slate, res, n)
    if i == n        
        res.add(slate.dup.join ) if slate.size > 0
        return 
    end 
    
    slate << tiles[i]
    tiles_subset_helper(tiles, i+1, slate, res, n)
    slate.pop 

    tiles_subset_helper(tiles, i+1, slate, res, n)     

    
end 