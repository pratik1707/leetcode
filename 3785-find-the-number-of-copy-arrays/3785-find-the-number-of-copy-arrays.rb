# @param {Integer[]} original
# @param {Integer[][]} bounds
# @return {Integer}
def count_arrays(original, bounds)
   # n = len(original)

    n = original.length 

    count = 0 

    left , right = bounds[0]

    for i in (1...n) do 
        diff = original[i] - original[i-1]

        left = [left + diff, bounds[i][0] ].max 

        right = [right + diff, bounds[i][1]].min 
    end 

    return (right - left + 1) < 0 ? 0 : (right - left + 1) 
end